include(`setup-jdk-gui-support.m4')
include(`setup-wget.m4')

RUN wget http://download-cf.jetbrains.com/webstorm/WebStorm-11.0.2.tar.gz -O /tmp/webstorm.tar.gz && \
    tar xfz /tmp/webstorm.tar.gz -C /opt && \
    rm /tmp/webstorm.tar.gz