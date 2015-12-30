RUN   apt-get update && \
      apt-get install -y python-dev build-essential

RUN   wget https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py && \
      python /tmp/get-pip.py

RUN   pip install virtualenv

USER  $username
ENV   PYTHON /usr/bin/python
USER  root