FROM alpine:edge
MAINTAINER identakid.net <ccssdev@identakid.net>

ENV VERSION 1.5.0-rc3

RUN apk add --update bash openjdk7

RUN wget -P /tmp "http://download.elastic.co/logstash/logstash/logstash-$VERSION.tar.gz" \
    && tar -xzf "/tmp/logstash-$VERSION.tar.gz" -C /tmp \
    && mv "/tmp/logstash-$VERSION" /home/logstash
COPY logstash.conf /home/logstash/logstash.conf
COPY start_services.sh /usr/local/bin/
CMD ["start_services.sh"]
