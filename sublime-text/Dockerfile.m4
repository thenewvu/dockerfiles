FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-gtk-radiance-theme.m4')
include(`setup-git.m4')
include(`setup-sublime-text.m4')

ENTRYPOINT /usr/bin/subl
