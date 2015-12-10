include(`setup-wget.m4')

# install node.js 5.x
RUN   wget -qO- https://deb.nodesource.com/setup_5.x | bash - && \
      apt-get update && \
      apt-get install -y nodejs

# setup custom prefix
USER  $username
RUN   npm config set prefix /home/$username/.npm
ENV   PATH $PATH:/home/$username/.npm/bin
USER  root
RUN   echo "export NODE_PATH=/home/vu/.npm/lib/node_modules" >> /etc/profile.d/npm.sh