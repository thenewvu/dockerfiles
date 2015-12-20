RUN   apt-get update && \
      apt-get install -y python3-dev build-essential

RUN   wget https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py && \
      python3 /tmp/get-pip.py

RUN   pip install virtualenv

USER  $username
ENV   PYTHON /usr/bin/python3
USER  root