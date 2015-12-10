ARG   timezone='Asia/Phnom_Penh'
RUN   echo $timezone | tee /etc/timezone && \
      dpkg-reconfigure --frontend noninteractive tzdata
