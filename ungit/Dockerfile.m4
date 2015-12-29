FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-ungit.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT ungit
