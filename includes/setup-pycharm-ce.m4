include(`setup-jdk-gui-support.m4')
include(`setup-wget.m4')

RUN   wget https://download.jetbrains.com/python/pycharm-community-5.0.2.tar.gz -O /tmp/pycharm-ce.tar.gz && \
      tar xfz /tmp/pycharm-ce.tar.gz -C /opt && \
      rm /tmp/pycharm-ce.tar.gz
