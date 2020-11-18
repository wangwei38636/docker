#/bin/sh

docker stop elasticsearch
docker rm elasticsearch

#-p 9300:9300

docker run --restart always --name elasticsearch \
-p 9200:9200 \
-e "discovery.type=single-node" \
-e "cluster.name=elasticsearch" \
-v ~/data/docker/elasticsearch/plugins:/usr/share/elasticsearch/plugins \
-v ~/data/docker/elasticsearch/data:/usr/share/elasticsearch/data \
-d elasticsearch:7.9.0
