include(`setup-git.m4')
include(`setup-python-qt4.m4')

run     apt-get update && \
        apt-get install -y make

RUN     cd /tmp && \
        git clone https://github.com/git-cola/git-cola.git && \
        cd git-cola && \
        make prefix=/usr install
