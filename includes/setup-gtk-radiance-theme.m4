RUN sudo apt-get update && \
    sudo apt-get install -y light-themes

RUN echo "include \"/usr/share/themes/Radiance/gtk-2.0/gtkrc\"" > $HOME/.gtkrc-2.0 && \
    echo "gtk-icon-theme-name=\"Humanity\"" >> $HOME/.gtkrc-2.0 && \
    sh -c "if [ ! -d $HOME/.config ]; then mkdir -p $HOME/.config; fi" && \
    echo "gtk-theme-name = Radiance" >  $HOME/.config/gtk-3.0 && \
    echo "gtk-icon-theme-name = Humanity" >> $HOME/.config/gtk-3.0
