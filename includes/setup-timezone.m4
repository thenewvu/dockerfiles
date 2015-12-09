RUN echo 'Asia/Phnom_Penh' | sudo tee /etc/timezone && \
    sudo dpkg-reconfigure --frontend noninteractive tzdata
