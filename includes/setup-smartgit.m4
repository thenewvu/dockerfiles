include(`setup-jdk-gui-support.m4')
include(`setup-git.m4')

RUN   add-apt-repository ppa:eugenesan/ppa && \
      apt-get update && \
      apt-get install -y smartgit
