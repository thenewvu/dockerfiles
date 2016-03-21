include(`setup-jdk-gui-support.m4')
include(`setup-git.m4')
include(`setup-wget.m4')

RUN     wget http://www.syntevo.com/static/smart/download/smartgit/smartgit-linux-7.2-preview-2.tar.gz -O /tmp/smartgit.tar.gz && \
        tar xzf /tmp/smartgit.tar.gz --directory /opt

RUN     apt-get update && \
        apt-get install -y libgl1-mesa-glx
