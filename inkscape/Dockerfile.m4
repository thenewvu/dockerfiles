FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-gtk-radiance-theme.m4')
include(`setup-inkscape.m4')

ENTRYPOINT /usr/bin/inkscape
