FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-oracle-jdk8.m4')
include(`setup-gtk-ambiance-theme.m4')
include(`setup-smartgit.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/smartgit
