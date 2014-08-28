FROM ubuntu:14.04
MAINTAINER toki <toki.kanno@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update; apt-get -q -y install mysql-server;
RUN sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf


VOLUME  ["/etc/mysql", "/var/lib/mysql"]
EXPOSE 3306

ADD ./startup.sh /opt/startup.sh

CMD ["sh", "/opt/startup.sh"]
