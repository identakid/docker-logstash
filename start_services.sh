#!/bin/sh -x

LOGSTASH_DIR=/home/logstash

$LOGSTASH_DIR/bin/logstash -f $LOGSTASH_DIR/logstash.conf
