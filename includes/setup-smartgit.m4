include(`setup-git.m4')

RUN   add-apt-repository ppa:eugenesan/ppa && \
      apt-get update && \
      apt-get install -y libgtk2.0-0 libxext-dev libxrender-dev libxtst-dev smartgit
