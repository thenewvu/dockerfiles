RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libxext-dev libxrender-dev libxtst-dev

include(`setup-wget.m4')

RUN   wget http://mirrors.viethosting.vn/apache//jmeter/binaries/apache-jmeter-2.13.tgz -O /tmp/jmeter.tar.gz && \
      tar xfz /tmp/jmeter.tar.gz -C /opt && \
      rm /tmp/jmeter.tar.gz
