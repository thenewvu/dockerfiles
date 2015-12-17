RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libxext-dev libxrender-dev libxtst-dev

include(`setup-wget.m4')

RUN wget http://download-cf.jetbrains.com/webstorm/WebStorm-11.0.2.tar.gz -O /tmp/webstorm.tar.gz && \
    tar xfz /tmp/webstorm.tar.gz -C /opt && \
    rm /tmp/webstorm.tar.gz