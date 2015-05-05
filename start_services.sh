#!/bin/sh -x

LOGSTASH_DIR=/home/logstash

$LOGSTASH_DIR/bin/logstash --debug -f $LOGSTASH_DIR/logstash.conf
