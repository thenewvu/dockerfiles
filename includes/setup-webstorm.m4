include(`setup-jdk-gui-support.m4')
include(`setup-wget.m4')

RUN wget http://download.jetbrains.com/webstorm/WebStorm-EAP-144.4199.8.tar.gz -O /tmp/webstorm.tar.gz && \
    tar xfz /tmp/webstorm.tar.gz -C /opt && \
    rm /tmp/webstorm.tar.gz
