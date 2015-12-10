#!/usr/bin/env python

import os
import subprocess
import re
import sys

from os import path

workingdir = path.dirname(path.abspath(__file__))

namepattern = re.compile(r'name\s*=\s*[\'\"](?P<maintainer>.+)\/(?P<name>.+)[\'\"]')
basepattern = re.compile(r'FROM\s+((?P<maintainer>.+)\/){0,1}(?P<name>.+)')


# Log information message
def logi(msg):
  print('* ' + msg)


# Log error message
def loge(msg):
  print('! ' + msg)


# Log a block message
def logb(msg):
  msglen       = len(msg)
  boxlen       = 72
  leftpadding  = (boxlen - msglen - 3) / 2
  rightpadding = 72 - msglen - leftpadding - 4
  print('!' * boxlen)
  print('!!' + ' ' * leftpadding + msg + ' ' * rightpadding + '!!')
  print('!' * boxlen)


# Log a line
def logl():
  print('*' * 72)


# Log a new line
def logn():
  print('')


# Log a tree of images
def logtree(root, level):
  print('\t' * level + root.tag())
  for child in root.children:
    logtree(child, level + 1)


# Contains a docker image information
class image:
  def __init__(self, maintainer, name, base, path):
    self.maintainer = maintainer
    self.name       = name
    self.base       = base
    self.path       = path
    self.children   = []    

  def tag(self):
    return self.maintainer + '/' + self.name

  def addchild(self, child):
    self.children.append(child)


# Scan docker images in @root directory
# @ignored are directory name that should be skipped from scanning
def scanimage(root, ignored=['.git']):
  images = []
  for cur, dirs, files in os.walk(root):
    for d in dirs:
      if d in ignored:
        dirs.remove(d)
    for f in files:
      if f == 'makefile':
        makefile   = path.join(cur, f)
        dockerfile = path.join(cur, 'Dockerfile.m4')
        if path.exists(dockerfile):
          logn()
          logl()
          logi('Found an image at path: .' + cur.replace(root, ''))
          logn()

          nameline = open(makefile).readline().strip()
          m = namepattern.search(nameline)
          if m is None or m.group('maintainer') is None or m.group('name') is None:
            loge('But could not read image tag in the first line of makefile')
            continue
          imagemaintainer = m.group('maintainer')
          imagename       = m.group('name')
          logi('Maintainer: ' + imagemaintainer)
          logi('Name      : ' + imagename)
          
          baseline = open(dockerfile).readline().strip()
          m = basepattern.search(baseline)
          if m is None or m.group('name') is None:
            loge('But could not read base tag in the first line of dockerfile')
            continue
          basemaintainer = m.group('maintainer')
          basemaintainer = basemaintainer if basemaintainer else 'officical'
          basename       = m.group('name')
          basetag        = basemaintainer + '/' + basename
          logi('From      : ' + basetag)

          images.append(image(imagemaintainer, imagename, basetag, cur))

  return images


# Scan the tree of dependency between @images
# @return root of the tree
def scantree(images):
  root= None

  # find root
  for i in images:
    skip = False
    for j in images:
      if i.base == j.tag():
        skip = True
        break
    if skip:
      continue
    root = i
    break
  
  images.remove(root)

  def scanchild(parent, images, scanned):
    
    if scanned >= len(images):
      return
  
    parent.children = [i for i in images if i.base == parent.tag()]
    scanned         = scanned + len(parent.children)

    for child in parent.children:
      scanchild(child, images, scanned)

  scanchild(root, images, 0)
  return root


# Build images in order of the dependency tree which starts from @root
# @level should be 0 (zero)
def buildtree(root, level):
  sys.stdout.write('\t' * level + root.tag())
  sys.stdout.flush()

  makefile = path.join(root.path, 'makefile')
  logfile  = path.join(root.path, 'build.log')

  exitcode = subprocess.call('cd {buildpath} && make -f {makefile} build > {logfile}' \
    .format(buildpath=root.path, makefile=makefile, logfile=logfile), shell=True)
  
  if exitcode != 0:
    loge('Build failed! Check log file at: ' + logfile)
    return

  binfile = path.join(root.path, '..', 'bin', root.name)
  with open(binfile, 'w') as fs:
    fs.write('#!/bin/sh\n')
    fs.write('exec make -f $(dirname "$0")/../{imagename}/makefile run' \
        .format(imagename=root.name))

  subprocess.call('chmod u+x {binfile}'.format(binfile=binfile), shell=True)

  print(' [DONE]')
  
  for child in root.children:
    buildtree(child, level + 1)


if __name__ == '__main__':
  logb('... SCANNING IMAGES ...')
  images = scanimage(workingdir)
  
  logb('... BUILDING TREE OF IMAGES ... ')
  root = scantree(images)
  logtree(root, 0)

  logb('... BUILDING IMAGES ...')
  buildtree(root, 0)
