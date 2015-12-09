FROM ubuntu:14.04
MAINTAINER Vu Le "thenewvu@gmail.com"

include(`setup-user-with-sudo-nopasswd.m4')
include(`setup-nearby-package-repo.m4')
include(`setup-timezone.m4')
include(`setup-locales.m4')
include(`setup-sound-capacity.m4')

ENTRYPOINT /bin/bash
