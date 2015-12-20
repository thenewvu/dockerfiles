include(`setup-jdk-gui-support.m4')
include(`setup-wget.m4')

RUN   wget http://mirrors.viethosting.vn/apache//jmeter/binaries/apache-jmeter-2.13.tgz -O /tmp/jmeter.tar.gz && \
      tar xfz /tmp/jmeter.tar.gz -C /opt && \
      rm /tmp/jmeter.tar.gz
