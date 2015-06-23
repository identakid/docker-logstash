FROM alpine:edge
MAINTAINER identakid.net <ccssdev@identakid.net>

ENV VERSION 1.5.1

RUN apk add --update bash openjdk7 ca-certificates
RUN wget -P /tmp "http://download.elastic.co/logstash/logstash/logstash-$VERSION.tar.gz" \
    && tar -xzf "/tmp/logstash-$VERSION.tar.gz" -C /tmp \
    && mv "/tmp/logstash-$VERSION" /home/logstash \
    && rm "/tmp/logstash-$VERSION.tar.gz" \
    && ln -s /lib/libcrypto.so* /usr/lib/libcrypt.so
ENV PATH /home/logstash/bin:$PATH
ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
COPY run.sh /usr/local/bin/
CMD ["run.sh"]
