RUN   sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/arc-theme.list" && \
      apt-get update && \
      apt-get install -y --force-yes arc-theme-solid
