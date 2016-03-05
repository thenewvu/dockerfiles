FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-vertex-gtk-theme.m4')
include(`setup-sunflower.m4')
include(`setup-fish.m4')
include(`setup-p7z-full.m4')
include(`setup-git.m4')
include(`setup-gvim.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/sunflower
