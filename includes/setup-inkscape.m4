include(`setup-software-properties-common.m4')

RUN   apt-add-repository ppa:inkscape.dev/stable && \
      apt-get update && \
      apt-get install -y inkscape
