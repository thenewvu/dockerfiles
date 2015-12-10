include(`setup-software-properties-common.m4')

RUN   add-apt-repository ppa:libreoffice/libreoffice-5-0 && \
      apt-get update && \
      apt-get install -y libreoffice libreoffice-style-breeze
