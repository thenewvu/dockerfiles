USER root

ARG user=vu

RUN useradd -m $user && \
    apt-get update && \
    echo Y | apt-get install -y sudo && \
    echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $user
