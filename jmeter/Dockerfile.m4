FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-oracle-jdk8.m4')
include(`setup-gtk-macbuntu-theme.m4')
include(`setup-jmeter.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /opt/apache-jmeter-2.13/bin/jmeter.sh
