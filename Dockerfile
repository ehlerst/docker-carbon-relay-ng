FROM alpine:3.5
MAINTAINER Tim Ehlers "ehlerst@gmail.com"
EXPOSE 2003 2004 2014 8081

RUN apk add --no-cache gawk

RUN mkdir /carbon_spool

ADD ./carbon-relay-ng.ini /carbon-relay-ng.ini
ADD ./carbon-relay-ng /carbon-relay-ng
ADD ./start.sh /start.sh

ENTRYPOINT /start.sh
