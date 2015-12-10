RUN   dpkg --add-architecture i386 && \
      apt-get update && \
      apt-get install -y libc6-i386 \
                         lib32stdc++6 \
                         lib32gcc1 \
                         lib32ncurses5 \
                         lib32z1 \
                         lib32z1-dev

ENV   PATH $PATH:/data/tools/android-sdk/platform-tools:/data/tools/android-sdk/tools