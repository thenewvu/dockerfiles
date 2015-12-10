include(`setup-software-properties-common.m4')

RUN   apt-add-repository ppa:paolorotolo/android-studio && \
      dpkg --add-architecture i386 && \
      apt-get update && \
      apt-get install -y libc6-i386 \
                         lib32stdc++6 \
                         lib32gcc1 \
                         lib32ncurses5 \
                         lib32z1 \
                         lib32z1-dev \
                         libxext-dev \
                         libxrender-dev \
                         libxtst-dev \
                         libgtk2.0-0 \
                         sudo \
                         android-studio