include(`setup-git.m4')

RUN sudo add-apt-repository ppa:eugenesan/ppa && \
    sudo apt-get update && \
    sudo apt-get install -y libgtk2.0-0 libxext-dev libxrender-dev libxtst-dev smartgit
