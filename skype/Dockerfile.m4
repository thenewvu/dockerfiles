FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-gtk-radiance-theme.m4')
include(`setup-skype.m4')
include(`cleanup.m4')

ENTRYPOINT /usr/bin/skype