RUN sudo mkdir -p /usr/share/icons/hicolor/16x16/apps/ && \
    sudo mkdir -p /usr/share/icons/hicolor/32x32/apps/ && \
    sudo mkdir -p /usr/share/icons/hicolor/48x48/apps/ && \
    sudo mkdir -p /usr/share/icons/hicolor/128x128/apps/ && \
    sudo mkdir -p /usr/share/icons/hicolor/256x256/apps/ && \
    sudo add-apt-repository ppa:webupd8team/sublime-text-3 && \
    sudo apt-get update && \
    sudo apt-get install -y libgtk2.0-0 libx11-6 sublime-text-installer
