FROM thenewvu/react-native-devenv
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-macbuntu-theme.m4')
include(`setup-webstorm.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT /opt/WebStorm-143.1184.19/bin/webstorm.sh
