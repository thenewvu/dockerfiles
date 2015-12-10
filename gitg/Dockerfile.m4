FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-radiance-theme.m4')
include(`setup-git.m4')
include(`setup-gitg.m4')

USER  $username
ENTRYPOINT /usr/bin/gitg
