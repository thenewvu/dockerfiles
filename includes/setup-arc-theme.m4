RUN   sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/arc-theme.list" && \
      apt-get update && \
      apt-get install -y --force-yes arc-theme-solid

USER  $username
RUN   echo "include \"/usr/share/themes/Arc-Dark/gtk-2.0/gtkrc\"" > /home/$username/.gtkrc-2.0 && \
      echo "gtk-icon-theme-name=\"Arc-Dark\"" >> /home/$username/.gtkrc-2.0 && \
      sh -c "if [ ! -d /home/$username/.config ]; then mkdir -p /home/$username/.config; fi" && \
      echo "gtk-theme-name = Arc-Dark" >  /home/$username/.config/gtk-3.0 && \
      echo "gtk-icon-theme-name = Arc-Dark" >> /home/$username/.config/gtk-3.0
USER  root
