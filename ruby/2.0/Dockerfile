# Ruby 2.0
#
# VERSION 2.0.0-p195
#
FROM ubuntu:12.04
MAINTAINER Alif Rachmawadi <subosito@gmail.com>

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get -qq update

RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -qq update

RUN apt-get install -y ruby2.0 ruby2.0-dev rubygems ruby-switch
RUN ruby-switch --set ruby2.0

RUN gem install rake bundler --no-rdoc --no-ri

CMD ["/usr/bin/ruby"]
