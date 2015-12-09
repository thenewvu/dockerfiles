RUN sudo usermod -aG audio vu

RUN echo "defaults.ctl.card 1"    >  $HOME/.asoundrc && \
    echo "defaults.pcm.card 1"    >> $HOME/.asoundrc && \
    echo "defaults.pcm.device 0"  >> $HOME/.asoundrc
