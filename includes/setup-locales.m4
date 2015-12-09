RUN sudo locale-gen --no-purge en_US.UTF-8 && \
    sudo update-locale LANG=en_US.UTF-8 && \
    sudo dpkg-reconfigure locales

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
