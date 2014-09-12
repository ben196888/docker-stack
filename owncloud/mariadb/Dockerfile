FROM ubuntu:12.04
MAINTAINER Ben Liu <ben.liu@hopebaytech.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xcbcb082a1bb943db
RUN echo "deb http://mariadb.mirror.iweb.com/repo/10.0/ubuntu precise main" > /etc/apt/sources.list.d/mariadb.list
RUN apt-get update; apt-get -q -y install mariadb-server;
RUN rm -rf /var/lib/apt/lists/*
RUN sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
RUN \
echo "mysqld_safe &" > /tmp/config && \
  echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
  echo "mysql -e 'CREATE DATABASE owncloud; GRANT ALL PRIVILEGES ON *.* TO \"admin\"@\"%\" IDENTIFIED BY \"54323013\" WITH GRANT OPTION; FLUSH PRIVILEGES'" >> /tmp/config && \
  bash /tmp/config && \
  rm -f /tmp/config

EXPOSE 3306
WORKDIR /data

CMD ["/usr/bin/mysqld_safe"]
