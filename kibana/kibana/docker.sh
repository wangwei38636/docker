#/bin/sh

docker stop kibana
docker rm kibana

docker run --restart always --name kibana \
-p 5601:5601 \
--link elasticsearch \
-e ELASTICSEARCH_URL=http://elasticsearch:9200 \
-e ELASTICSEARCH_HOSTS=http://elasticsearch:9200 \
-d docker.elastic.co/kibana/kibana:7.9.0
