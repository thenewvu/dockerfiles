FROM thenewvu/react-native-devenv
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-radiance-theme.m4')
include(`setup-webstorm.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT /opt/WebStorm-143.382.36/bin/webstorm.sh
