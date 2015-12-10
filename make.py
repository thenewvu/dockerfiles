#!/usr/bin/env python

# Just a 10-minute script, read it carefully, don't blame me if it doesn't work for you
# YOU'VE BEEN WARNED!

import os
import subprocess
from os import path

wd = path.dirname(path.abspath(__file__))

class image:
  def __init__(self, name, base, path, children = []):
    self.name = name
    self.base = base
    self.path = path
    self.children = children
  def addchild(self, child):
    self.children.append(child)
  def findbyname(self, name):
    if self.name == name:
      return self
    for child in self.children:
      found = child.findbyname(name)
      if found is not None:
        return found

tree = None

for cur, dirs, files in os.walk(wd):
  for d in dirs:
    if d in ['.git']:
      dirs.remove(d)
  for f in files:
    if f == 'Dockerfile.m4':
      dockerfile = path.join(cur, f)
      imagepath = path.dirname(dockerfile)
      print('#' * 72)
      print('# path: ' + imagepath)
      makefile = path.join(imagepath, 'makefile')
      if path.exists(makefile):
        with open(makefile, 'r') as fs:
          for line in fs:
            if line.startswith('name'):
              imagename = line[8:].strip()[:-1]
              print('# name: ' + imagename)
        with open(dockerfile, 'r') as fs:
          for line in fs:
            if line.startswith('FROM'):
              imagebase = line[5:].strip()
              print('# from: ' + imagebase)
              if tree is None:
                tree = image(imagename, None, imagepath, [])
              else:
                foundbase = tree.findbyname(imagebase)
                if foundbase is None:
                  tree = image(imagename, None, imagepath, [tree])
                else:
                  foundbase.addchild(image(imagename, foundbase, imagepath, []))

def buildtree(root, level):
  print('--' * level + root.name)
  exitcode = subprocess.call('cd {imagepath} && make build > {imagename}.log'.format(imagepath=root.path, imagename=root.name.replace('/', '-')), shell=True)
  if exitcode != 0:
    return  

  binname = path.basename(root.path)
  bin = '#!/bin/sh\nexec make -f $(dirname "$0")/../{binname}/makefile run'.format(binname=binname)
  binpath = path.join(path.dirname(root.path), 'bin', binname)
  
  with open(binpath, 'w') as fs:
    fs.write(bin)
  subprocess.call('chmod u+x ' + binpath, shell=True)

  for child in root.children:
    buildtree(child, level + 1)

print(72 * '#')
buildtree(tree, 0)
