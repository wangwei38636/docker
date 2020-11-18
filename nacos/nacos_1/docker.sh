#/bin/sh

docker stop nacos-registry
docker rm nacos-registry

docker run --restart=always --name=nacos-registry \
-p 8848:8848 \
-e PREFER_HOST_MODE=hostname \
-e MODE=standalone \
-v ~/work/docker/nacos/nacos_1/custom.properties:/home/nacos/init.d/custom.properties \
-v ~/data/docker/nacos/data:/home/nacos/data \
-d nacos/nacos-server
