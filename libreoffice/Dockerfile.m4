FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-gtk-radiance-theme.m4')
include(`setup-libreoffice.m4')
include(`cleanup.m4')

ENTRYPOINT /usr/bin/libreoffice
