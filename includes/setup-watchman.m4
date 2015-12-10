include(`setup-git.m4')

RUN   apt-get update && \
      apt-get install -y python python-dev autoconf automake build-essential

RUN   cd /tmp && \
      git clone https://github.com/facebook/watchman.git && \
      cd watchman && \
      git checkout v4.1.0 && \
      ./autogen.sh && \
      ./configure && \
      make && \
      make install && \
      rm -rf /tmp/watchman
