# MySQL
#
# VERSION 5.5.22
#
FROM ubuntu:12.04
MAINTAINER Alif Rachmawadi <subosito@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get install -y mysql-server

ADD my.cnf /etc/mysql/conf.d/my.cnf

ADD mysql_setup.sh /usr/local/bin/mysql_setup.sh
RUN chmod 755 /usr/local/bin/mysql_setup.sh
RUN /usr/local/bin/mysql_setup.sh

EXPOSE 3306
VOLUME ["/var/lib/mysql"]
ENTRYPOINT ["/usr/bin/mysqld_safe"]
