FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-krusader.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/krusader
