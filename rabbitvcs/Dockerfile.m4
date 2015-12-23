FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-macbuntu-theme.m4')
include(`setup-rabbitvcs.m4')
include(`cleanup.m4')

USER  $username
RUN   mkdir -p /home/$username/bin || true && \
      echo "/usr/bin/gsettings set org.nemo.desktop show-desktop-icons false" >> /home/$username/bin/startup.sh && \
      echo "/usr/bin/nemo --no-desktop" >> /home/$username/bin/startup.sh && \
      chmod u+x /home/$username/bin/startup.sh

WORKDIR /data/projects
ENTRYPOINT ~/bin/startup.sh