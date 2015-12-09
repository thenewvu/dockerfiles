RUN sudo usermod -aG audio vu

COPY .asoundrc /home/vu/.asoundrc
