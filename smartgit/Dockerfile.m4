FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-oracle-jdk8.m4')
include(`setup-gtk-radiance-theme.m4')
include(`setup-smartgit.m4')
include(`cleanup.m4')

ENTRYPOINT /usr/bin/smartgit
