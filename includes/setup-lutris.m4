include(`setup-wget.m4')

RUN     echo "deb http://download.opensuse.org/repositories/home:/strycore/xUbuntu_15.10/ ./" | tee /etc/apt/sources.list.d/lutris.list && \
        wget -q http://download.opensuse.org/repositories/home:/strycore/xUbuntu_15.10/Release.key -O- | apt-key add -

RUN     apt-get update && \
        apt-get install -y lutris

RUN     apt-get update && \
        apt-get install -y libgl1-mesa-glx python-xdg
