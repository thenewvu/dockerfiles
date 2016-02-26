FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-git-cola.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /usr/bin/git-cola
