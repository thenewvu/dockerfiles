include(`setup-software-properties-common.m4')

RUN sudo apt-add-repository ppa:inkscape.dev/stable && \
    sudo apt-get update && \
    sudo apt-get install -y inkscape
