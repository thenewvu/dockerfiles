FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-ambiance-theme.m4')
include(`setup-inkscape.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/inkscape
