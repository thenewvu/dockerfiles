include(`setup-software-properties-common.m4')

RUN  add-apt-repository ppa:webupd8team/atom && \
     apt-get update && \
     apt-get install -y atom libasound2