FROM ubuntu:wily
MAINTAINER Vu Le "thenewvu@gmail.com"

ARG   username
USER  root

include(`setup-nearby-package-repo.m4')
include(`setup-timezone.m4')
include(`setup-locales.m4')
include(`setup-non-root-user.m4')
include(`setup-sound-capacity.m4')
include(`cleanup.m4')

USER  $username
ENTRYPOINT /bin/bash
