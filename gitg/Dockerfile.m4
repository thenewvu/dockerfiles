FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-gtk-radiance-theme.m4')
include(`setup-git.m4')
include(`setup-gitg.m4')

ENTRYPOINT /usr/bin/gitg
