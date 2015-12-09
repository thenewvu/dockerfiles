RUN sudo apt-get update && \
    sudo apt-get install -y git

RUN git config --global user.name "Vu Le" && \
    git config --global user.email "thenewvu@gmail.com" && \
    git config --global credential.helper "cache --timeout=36000"
