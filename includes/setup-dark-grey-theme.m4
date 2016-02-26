include(`setup-wget.m4')
include(`setup-p7z-full.m4')

RUN   mkdir -p /usr/share/themes && \
      cd /usr/share/themes && \
      wget http://www.deviantart.com/download/133661081/dark_grey_by_nale12.zip?token=ba0353492fa0436e58debbf45bdfd692423ba8b2&ts=1456494690 && \
      7z x dark_grey_by_nale12.zip && \
      rm dark-grey.tar.gz

USER  $username
RUN   echo "include \"/usr/share/themes/dark-grey/gtk-2.0/gtkrc\"" > /home/$username/.gtkrc-2.0 && \
      echo "gtk-icon-theme-name=\"Humanity\"" >> /home/$username/.gtkrc-2.0 && \
      echo "gtk-font-name=\"Hermit 8\"" >> /home/$username/.gtkrc-2.0 && \
      echo "" >> /home/$username/.gtkrc-2.0 && \
      sh -c "if [ ! -d /home/$username/.config ]; then mkdir -p /home/$username/.config; fi" && \
      echo "gtk-theme-name = dark-grey" >  /home/$username/.config/gtk-3.0 && \
      echo "gtk-icon-theme-name =Humanity" >> /home/$username/.config/gtk-3.0 && \
      echo "gtk-font-name=\"Hermit 8\"" >> /home/$username/.config/gtk-3.0
USER  root
