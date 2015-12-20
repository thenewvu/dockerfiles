include(`setup-android-sdk-tools.m4')
include(`setup-jdk-gui-support.m4')
include(`setup-software-properties-common.m4')

RUN   apt-add-repository ppa:paolorotolo/android-studio && \
      dpkg --add-architecture i386 && \
      apt-get update && \
      apt-get install -y sudo \
                         android-studio