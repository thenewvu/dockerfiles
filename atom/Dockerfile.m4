FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-vertex-gtk-theme.m4')
include(`setup-nodejs.m4')
include(`setup-git.m4')
include(`setup-python3-dev.m4')
include(`setup-python2-dev.m4')
include(`setup-atom.m4')
include(`setup-fish.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/atom-beta -f
