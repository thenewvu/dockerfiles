include(`setup-wget.m4')

RUN   mkdir -p /usr/share/themes && \
      wget http://gnome-look.org/CONTENT/content-files/168447-Mona%203.0%20GTK%20Theme.tar.gz -O /usr/share/themes/mona.tar.gz && \
      cd /usr/share/themes && \
      tar xzf mona.tar.gz && \
      rm mona.tar.gz

USER  $username
RUN   echo "include \"/usr/share/themes/Mona 3.0/gtk-2.0/gtkrc\"" > /home/$username/.gtkrc-2.0 && \
      echo "gtk-icon-theme-name=\"Mona 3.0\"" >> /home/$username/.gtkrc-2.0 && \
      echo "gtk-font-name=\"Hermit 8\"" >> /home/$username/.gtkrc-2.0 && \
      echo "" >> /home/$username/.gtkrc-2.0 && \
      sh -c "if [ ! -d /home/$username/.config ]; then mkdir -p /home/$username/.config; fi" && \
      echo "gtk-theme-name = Mona 3.0" >  /home/$username/.config/gtk-3.0 && \
      echo "gtk-icon-theme-name = Mona 3.0" >> /home/$username/.config/gtk-3.0
USER  root
