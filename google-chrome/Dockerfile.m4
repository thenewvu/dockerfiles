FROM thenewvu/base
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-gtk-radiance-theme.m4')
include(`setup-google-chrome.m4')
include(`cleanup.m4')

ENTRYPOINT /usr/bin/google-chrome
