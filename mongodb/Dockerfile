# MongoDB
#
# Version 2.4.8
#
FROM ubuntu:12.04
MAINTAINER Alif Rachmawadi <subosito@gmail.com>

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee /etc/apt/sources.list.d/10gen.list

RUN apt-get -qq update
RUN apt-get install -y mongodb-10gen=2.4.9

RUN mkdir -p /data/db

EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]

