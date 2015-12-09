FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-oracle-jdk8.m4')
include(`setup-nodejs.m4')
include(`setup-watchman.m4')
include(`setup-android-sdk-tools.m4')
include(`cleanup.m4')

WORKDIR /data/projects
ENTRYPOINT /bin/bash
