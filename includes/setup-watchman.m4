RUN sudo apt-get update && \
    sudo apt-get install -y python python-dev autoconf automake build-essential git

RUN cd /tmp && \
    git clone https://github.com/facebook/watchman.git && \
    cd watchman && \
    git checkout v4.1.0 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    sudo make install && \
    sudo rm -rf /tmp/watchman
