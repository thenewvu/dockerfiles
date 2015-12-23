include(`setup-git.m4')
include(`setup-nemo.m4')

RUN   apt-get update && \
      apt-get install -y python-gtk2 \
                         python-configobj \
                         python-gobject \
                         python-simplejson \
                         python-gtkspell \
                         python-svn \
                         python-tk \
                         subversion \
                         python-dulwich \
                         meld

RUN   cd /tmp && \
      git clone https://github.com/rabbitvcs/rabbitvcs.git && \
      cd rabbitvcs && \
      python setup.py install --install-layout=deb && \
      cp clients/nemo/RabbitVCS.py /usr/share/nemo-python/extensions