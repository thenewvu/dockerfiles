FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-gtk-ambiance-theme.m4')
include(`setup-git.m4')
include(`setup-wget.m4')
include(`setup-p7z-full.m4')
include(`setup-mongotron.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /opt/mongotron/Mongotron-linux-x64/Mongotron
