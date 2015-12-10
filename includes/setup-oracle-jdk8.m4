include(`setup-software-properties-common.m4')

# silently accept oracle license
RUN   echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN   echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

# install oracle-jdk8
RUN   add-apt-repository ppa:webupd8team/java && \
      apt-get update && \
      apt-get install -y oracle-java8-installer
