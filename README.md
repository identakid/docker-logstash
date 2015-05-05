# docker-logstash
Docker image with Logstash 1.5 leveraging Alpine Linux

## How to run
```
docker run -it --name central-logstash -v $PWD/logstash.conf:/home/logstash/logstash.conf identakid/logstash /bin/bash
bash-4.3# start_services.sh
or
docker run -it --name central-logstash -v $PWD/logstash.conf:/home/logstash/logstash.conf identakid/logstash
```
