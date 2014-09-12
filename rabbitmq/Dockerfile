FROM ubuntu:14.04
MAINTAINER Ben Liu "ben196888@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
RUN apt-get -qq update > /dev/null
RUN apt-get -qq -y install rabbitmq-server > /dev/null
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management
RUN echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config

RUN cat /etc/rabbitmq/rabbitmq.config
RUN /usr/sbin/rabbitmqctl start_app
RUN /usr/sbin/rabbitmqctl status
RUN /usr/sbin/rabbitmqctl change_password guest RABBIT_PASS


EXPOSE 5672 15672

CMD /usr/sbin/rabbitmq-server