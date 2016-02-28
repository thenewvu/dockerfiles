include(`setup-software-properties-common.m4')
include(`setup-google-chrome.m4')

RUN     add-apt-repository ppa:nilarimogard/webupd8 && \
        apt-get update && \
        apt-get install -y freshplayerplugin
