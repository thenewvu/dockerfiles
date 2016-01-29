RUN   apt-get update && \
      apt-get install -y ca-certificates \
                         curl \
                         gconf2 \
                         gconf-service \
                         git \
                         gvfs-bin \
                         libasound2 \
                         libgconf-2-4 \
                         libgnome-keyring-dev \
                         libgtk2.0-0 \
                         libnotify4 \
                         libnss3 \
                         libxtst6

RUN   cd /tmp && \
      wget https://github.com/officert/mongotron/releases/download/v1.0.0-alpha.2/Mongotron-linux-x64.zip -O mongotron.zip && \
      7z x mongotron.zip -omongotron && \
      cp -r mongotron /opt && \
      chown $username:$username -R /opt

