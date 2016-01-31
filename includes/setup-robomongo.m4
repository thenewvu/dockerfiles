include(`setup-wget.m4')

RUN   wget http://download.robomongo.org/0.9.0-rc3/linux/robomongo-0.9.0-rc3-linux-x86_64-0476204.tar.gz -O /tmp/robomongo.tar.gz && \
      mkdir /opt/robomongo && \
      tar xfz /tmp/robomongo.tar.gz -C /opt/robomongo --strip-components=1 && \
      rm /tmp/robomongo.tar.gz && \
      chown $username:$username -R /opt/robomongo

RUN   apt-get update && \
      apt-get install -y libgl1-mesa-dev libsm-dev libice-dev