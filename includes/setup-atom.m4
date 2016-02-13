ARG   atom_version=v1.4.3

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
                      xdg-utils -y --no-install-recommends && \
      apt-get clean

RUN   curl -L https://github.com/atom/atom/releases/download/$atom_version/atom-amd64.deb > /tmp/atom.deb && \
      dpkg -i /tmp/atom.deb && \
      rm -f /tmp/atom.deb && \
      useradd -d /home/atom -m atom
