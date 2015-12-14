RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libxext-dev libxrender-dev libxtst-dev

include(`setup-wget.m4')

RUN   wget https://download.jetbrains.com/python/pycharm-community-5.0.2.tar.gz -O /tmp/pycharm-ce.tar.gz && \
      tar xfz /tmp/pycharm-ce.tar.gz -C /opt && \
      rm /tmp/pycharm-ce.tar.gz
