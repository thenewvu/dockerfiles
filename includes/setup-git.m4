ARG   gitusername
ARG   gituseremail

RUN   apt-get update && \
      apt-get install -y git

RUN   git config --global user.name   $gitusername  && \
      git config --global user.email  $gituseremail && \
      git config --global credential.helper "cache --timeout=36000"
