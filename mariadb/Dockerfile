FROM alpine
MAINTAINER Adam Szatyin <szatyinadam@gmail.com>

RUN apk --update add mariadb \
    mariadb-client &&\
    rm -rf /var/cache/apk/*

# User and database setup
ADD mariadb_init.sh /mariadb_init.sh
ADD run.sh /run.sh
RUN chmod 775 *.sh

ADD my.cnf /etc/mysql/my.cnf

# Add VOLUMEs 
VOLUME  ["/etc/mysql", "/var/lib/mysql"]

ENV TERM dumb

CMD ["sh", "run.sh"]

EXPOSE 3306
