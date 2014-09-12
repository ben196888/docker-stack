FROM ubuntu:12.04
MAINTAINER BenLiu "ben.liu@hopebaytech.com"

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN sed -i -e "s#http://archive.ubuntu.com/ubuntu/#http://free.nchc.org.tw/ubuntu/#" /etc/apt/sources.list
RUN sed -i -e "s#http://archive.ubuntu.com/ubuntu/#http://free.nchc.org.tw/ubuntu/#" /etc/apt/sources.list.d/proposed.list
RUN apt-get -y update

RUN apt-get install -y apache2 libapache2-mod-php5 php5-gd php5-json php-xml-parser php5-mysql php5-curl php5-intl php5-sqlite php5-mcrypt php5-imagick smbclient curl libcurl3 bzip2 wget vim

RUN wget -O - http://download.owncloud.org/community/owncloud-7.0.2.tar.bz2 | tar jx -C /var/www/

ADD ./001-owncloud.conf /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/001-owncloud.conf /etc/apache2/sites-enabled/
RUN a2enmod rewrite

EXPOSE :80
RUN chown -R www-data:www-data /var/www/owncloud

CMD ["/usr/sbin/apache2ctl", "-D",  "FOREGROUND"]
