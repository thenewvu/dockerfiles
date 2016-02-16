include(`setup-wget.m4')

RUN   wget http://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken-amd64.deb && \
      dpkg -i /tmp/gitkraken-amd64.deb || true

RUN   apt-get update && \
      apt-get -fy install

RUN   apt-get update && \
      apt-get install git \
                    curl \
                    ca-certificates \
                    libgtk2.0-0 \
                    libxtst6 \
                    libnss3 \
                    libgconf-2-4 \
                    libasound2 \
                    fakeroot \
                    gconf2 \
                    gconf-service \
                    libcap2 \
                    libnotify4 \
                    libxtst6 \
                    libnss3 \
                    gvfs-bin \
                    libgnome-keyring0 \
                    xdg-utils -y --no-install-recommends && \
    apt-get clean
