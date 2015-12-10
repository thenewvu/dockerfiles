RUN   echo "deb http://archive.canonical.com/ubuntu/ wily partner" > /etc/apt/sources.list.d/canonical_partner.list && \
      dpkg --add-architecture i386 && \
      apt-get update && \
      apt-get install -y skype