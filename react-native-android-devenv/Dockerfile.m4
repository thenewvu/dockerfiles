FROM thenewvu/react-native-devenv
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-macbuntu-theme.m4')
include(`setup-android-studio.m4')
include(`cleanup.m4')

USER  $username
WORKDIR /data/projects
ENTRYPOINT /opt/android-studio/bin/studio.sh
