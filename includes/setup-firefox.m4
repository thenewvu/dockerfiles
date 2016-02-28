include(`setup-software-properties-common.m4')

RUN     add-apt-repository ppa:mozillateam/firefox-next && \
        apt-get update && \
        apt-get install -y firefox
