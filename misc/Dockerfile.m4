FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

RUN apt-get update && \
    apt-get install -y apache2-utils

include(`cleanup.m4')

USER  $username
ENTRYPOINT /bin/bash
