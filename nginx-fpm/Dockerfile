FROM alpine
MAINTAINER Adam Szatyin <szatyinadam@gmail.com>

RUN apk --update add \
  nginx \
  php-fpm \
  php-json \
  php-pdo \
  php-mysql \
  php-pdo_mysql \
  php-mcrypt \
  supervisor &&\
  rm -rf /var/cache/apk/*

RUN mkdir -p /etc/nginx
RUN mkdir -p /var/run/php-fpm
RUN mkdir -p /var/log/supervisor

RUN rm /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/www", "/etc/nginx/sites-enabled"]

ADD nginx-supervisor.ini /etc/supervisor.d/nginx-supervisor.ini

EXPOSE 8080 9000

CMD ["/usr/bin/supervisord"]
