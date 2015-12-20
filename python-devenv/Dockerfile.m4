FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-oracle-jdk8.m4')
include(`setup-gtk-macbuntu-theme.m4')
include(`setup-pycharm-ce.m4')
include(`setup-python3-dev.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT /opt/pycharm-community-5.0.2/bin/pycharm.sh
