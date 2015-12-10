include(`setup-wget.m4')

# install node.js 5.x
RUN   wget -qO- https://deb.nodesource.com/setup_5.x | bash - && \
      apt-get update && \
      apt-get install -y nodejs

# setup custom prefix
RUN   npm config set prefix /home/$username/.npm
ENV   PATH $PATH:/home/$username/.npm/bin
RUN   export NODE_PATH="'$(npm root -g)'" >> /etc/profile.d/npm.sh