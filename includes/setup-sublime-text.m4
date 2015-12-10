include(`setup-software-properties-common.m4')

RUN   mkdir -p /usr/share/icons/hicolor/16x16/apps/ && \
      mkdir -p /usr/share/icons/hicolor/32x32/apps/ && \
      mkdir -p /usr/share/icons/hicolor/48x48/apps/ && \
      mkdir -p /usr/share/icons/hicolor/128x128/apps/ && \
      mkdir -p /usr/share/icons/hicolor/256x256/apps/ && \
      add-apt-repository ppa:webupd8team/sublime-text-3 && \
      apt-get update && \
      apt-get install -y libgtk2.0-0 libx11-6 sublime-text-installer
