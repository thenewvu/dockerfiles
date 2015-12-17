ARG   gitusername='Vu Le'
ARG   gitusermail='thenewvu@gmail.com'

RUN   apt-get update && \
      apt-get install -y git

USER  $username
RUN   git config --global user.name   "$gitusername" && \
      git config --global user.email  "$gitusermail" && \
      git config --global credential.helper "cache --timeout=36000"
USER root
