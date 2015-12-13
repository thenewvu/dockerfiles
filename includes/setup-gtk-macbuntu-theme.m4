include(`setup-software-properties-common.m4')

RUN   add-apt-repository ppa:noobslab/themes && \
      apt-get update && \
      mkdir -p /usr/share/icons/default && \
      apt-get install -y sudo libglib2.0-bin macbuntu-ithemes-v6 macbuntu-icons-v6

USER  $username
RUN   echo "include \"/usr/share/themes/MacBuntu-Unity/gtk-2.0/gtkrc\"" > /home/$username/.gtkrc-2.0 && \
      echo "gtk-icon-theme-name=\"MacBuntu-OS\"" >> /home/$username/.gtkrc-2.0 && \
      sh -c "if [ ! -d /home/$username/.config ]; then mkdir -p /home/$username/.config; fi" && \
      echo "gtk-theme-name = MacBuntu-Unity" >  /home/$username/.config/gtk-3.0 && \
      echo "gtk-icon-theme-name = MacBuntu-OS" >> /home/$username/.config/gtk-3.0
USER  root