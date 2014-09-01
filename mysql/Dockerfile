FROM ubuntu:14.04
MAINTAINER toki <toki.kanno@gmail.com>


ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update; apt-get -q -y install mysql-server;
RUN sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
RUN /usr/sbin/mysqld & \
    sleep 10s &&\
    echo "GRANT ALL ON *.* TO 'admin'@'%' IDENTIFIED BY '54323013' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

VOLUME  ["/etc/mysql", "/var/lib/mysql"]
EXPOSE 3306

#ADD ./startup.sh /opt/startup.sh
#CMD ["/bin/bash", "/opt/startup.sh"]
CMD ["/usr/bin/mysqld_safe"]
