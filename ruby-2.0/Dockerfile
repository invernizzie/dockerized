# Ruby 2.0
#
# VERSION 2.0.0-p195
#
FROM ubuntu:12.04
MAINTAINER Alif Rachmawadi <subosito@gmail.com>

RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update -y

RUN apt-get install -y ruby2.0 rubygems ruby-switch
RUN ruby-switch --set ruby2.0

RUN gem install bundler --no-rdoc --no-ri

CMD ["/usr/bin/ruby"]

