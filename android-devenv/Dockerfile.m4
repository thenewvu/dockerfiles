FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-oracle-jdk8.m4')

include(`setup-android-studio.m4')
include(`setup-subversion.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT /opt/android-studio/bin/studio.sh
