FROM alpine

RUN apk --update add varnish &&\
    rm -rf /var/cache/apk/*

EXPOSE 80

ADD start.sh /etc/start.sh
CMD ["/etc/start.sh"]

