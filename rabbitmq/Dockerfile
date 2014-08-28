FROM ubuntu:14.04
MAINTAINER Ben Liu "ben196888@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y rabbitmq-server

RUN mkdir -p /opt/openstack/rabbitmq
ADD set_rabbitmq_passwd.sh /opt/openstack/rabbitmq/set_rabbitmq_passwd.sh

CMD ["/bin/sh", "/opt/openstack/rabbitmq/set_rabbitmq_passwd.sh"]