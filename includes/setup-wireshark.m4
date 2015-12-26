include(`setup-software-properties-common.m4')

RUN   add-apt-repository ppa:wireshark-dev/stable && \
      apt-get update && \
      DEBIAN_FRONTEND=noninteractive apt-get install -y wireshark

RUN   groupadd wireshark && \
      usermod -a -G wireshark $username && \
      chgrp wireshark /usr/bin/dumpcap && \
      chmod 4750 /usr/bin/dumpcap