RUN   apt-get update && \
      apt-get install -y light-themes

USER  $username
RUN   echo "include \"/usr/share/themes/Radiance/gtk-2.0/gtkrc\"" > /home/$username/.gtkrc-2.0 && \
      echo "gtk-icon-theme-name=\"Humanity\"" >> /home/$username/.gtkrc-2.0 && \
      sh -c "if [ ! -d /home/$username/.config ]; then mkdir -p /home/$username/.config; fi" && \
      echo "gtk-theme-name = Radiance" >  /home/$username/.config/gtk-3.0 && \
      echo "gtk-icon-theme-name = Humanity" >> /home/$username/.config/gtk-3.0
USER  root
