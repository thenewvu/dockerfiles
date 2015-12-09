RUN sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ $(lsb_release -cs) partner' >> /etc/apt/sources.list.d/canonical_partner.list" && \
    sudo dpkg --add-architecture i386 && \
    sudo apt-get update && \
    sudo apt-get install -y skype