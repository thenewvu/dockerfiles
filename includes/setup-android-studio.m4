include(`setup-software-properties-common.m4')

RUN   apt-add-repository ppa:paolorotolo/android-studio && \
      dpkg --add-architecture i386 && \
      apt-get update && \
      apt-get install -y libxext-dev \
                         libxrender-dev \
                         libxtst-dev \
                         libgtk2.0-0 \
                         sudo \
                         android-studio