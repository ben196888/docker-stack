FROM ubuntu:14.04
MAINTAINER Ben Liu "ben196888@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F7B8CEA6056E8E56
RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
RUN apt-get -qq update > /dev/null
RUN apt-get -qq -y install rabbitmq-server > /dev/null
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management
RUN echo "[{rabbit, [{default_user, \"guest\"},{default_pass, \"changeme\"},{tcp_listeners, [{\"0.0.0.0\", 5672}]}]}]." > /etc/rabbitmq/rabbitmq.config

EXPOSE 5672 15672

CMD /usr/sbin/rabbitmq-server
