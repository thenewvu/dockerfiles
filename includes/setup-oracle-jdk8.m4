# silently accept oracle license
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

# install oracle-jdk8
RUN sudo add-apt-repository ppa:webupd8team/java && \
    sudo apt-get update && \
    sudo apt-get install -y oracle-java8-installer
