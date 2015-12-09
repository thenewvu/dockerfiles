USER root

RUN useradd -m vu && \
    echo 'vu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/90-cloudimg-ubuntu

USER vu
