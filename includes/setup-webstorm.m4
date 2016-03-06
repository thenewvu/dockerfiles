include(`setup-jdk-gui-support.m4')
include(`setup-wget.m4')

RUN wget https://download.jetbrains.com/webstorm/WebStorm-EAP-145.184.5.tar.gz -O /tmp/webstorm.tar.gz && \
    tar xfz /tmp/webstorm.tar.gz -C /opt && \
    rm /tmp/webstorm.tar.gz
