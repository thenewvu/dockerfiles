# add non-root user to group audio
RUN   usermod -aG audio $username

# copy source card configuration from host
COPY  .asoundrc /home/$username/.asoundrc
