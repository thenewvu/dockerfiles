include(`setup-software-properties-common.m4')

RUN   add-apt-repository ppa:noobslab/nemo && \
      apt-get update && \
      apt-get install -y nemo \
                         python-nemo \
                         python-dbus \
                         nemo-terminal