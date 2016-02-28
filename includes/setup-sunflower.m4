include(`setup-wget.m4')

ARG     sunflower_version=0.3.61-1

RUN     wget -O /tmp/sunflower.deb http://sunflower-fm.org/pub/sunflower-$sunflower_version.all.deb && \
        dpkg -i /tmp/sunflower.deb || true && \
        apt-get update && \
        apt-get install -fy

RUN     apt-get update && \
        apt-get install -y python-chardet python-vte gtk2-engines-pixbuf
