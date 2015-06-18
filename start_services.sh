#!/bin/sh -x

LOGSTASH_DIR=/home/logstash
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

$LOGSTASH_DIR/bin/logstash -f $LOGSTASH_DIR/logstash.conf
