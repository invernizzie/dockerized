# Ruby 1.9
#
# VERSION 1.9.3-p448
#
FROM ubuntu:12.04
MAINTAINER Alif Rachmawadi <subosito@gmail.com>

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get -qq update

RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -qq update

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev rubygems ruby-switch
RUN ruby-switch --set ruby1.9.1

RUN gem install bundler --no-rdoc --no-ri

CMD ["/usr/bin/ruby"]
