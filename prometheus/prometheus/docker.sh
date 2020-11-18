#/bin/sh

docker stop prometheus
docker rm prometheus

docker run --restart=always --name prometheus \
-p 9090:9090 \
-v ~/work/docker/prometheus/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
-d prom/prometheus
