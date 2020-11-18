#/bin/sh

docker stop grafana
docker rm grafana

docker run --restart=always --name=grafana \
-p 3000:3000 \
-v ~/data/docker/grafana:/var/lib/grafana \
-v ~/work/docker/grafana/grafana.ini:/etc/grafana/grafana.ini \
-d grafana/grafana
