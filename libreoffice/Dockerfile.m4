FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-vertex-gtk-theme.m4')
include(`setup-libreoffice.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/libreoffice
