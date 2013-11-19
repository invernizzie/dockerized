# Circus
#
# VERSION 0.10.0
#
FROM ubuntu:12.04
MAINTAINER Alif Rachmawadi <subosito@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get -qq update

RUN apt-get install -y wget python-dev python-pip build-essential libevent-dev

# zeromq
ADD install_zeromq.sh /usr/local/bin/zeromq-installer
RUN chmod 755 /usr/local/bin/zeromq-installer
RUN zeromq-installer

# circus
RUN pip install circus circus-web

VOLUME ["/data"]

EXPOSE 5555
EXPOSE 5556
EXPOSE 5557
EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/circusd"]
