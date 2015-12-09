# install node.js 5.x
RUN sudo apt-get update && \
    sudo apt-get install wget && \
    wget -qO- https://deb.nodesource.com/setup_5.x | sudo -E bash - && \
    sudo apt-get update && \
    sudo apt-get install -y nodejs

# setup custom prefix
RUN npm config set prefix /home/vu/.npm
ENV PATH $PATH:/home/vu/.npm/bin
RUN sudo sh -c "echo 'export NODE_PATH="'$(npm root -g)'"' >> /etc/profile.d/npm.sh"