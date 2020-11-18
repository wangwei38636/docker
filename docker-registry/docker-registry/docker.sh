#/bin/sh

############ docker-registry <完>
docker stop docker-registry
docker rm docker-registry

docker run --name docker-registry \
--restart=always \
-v ~/data/docker/registry/docker-registry:/var/lib/registry \
-p 5000:5000 \
-d registry:latest

############ docker-registry-frontend <完>
docker stop docker-registry-frontend
docker rm docker-registry-frontend

docker run --name docker-registry-frontend \
--restart=always \
--link docker-registry \
-e ENV_DOCKER_REGISTRY_HOST=registry \
-e ENV_DOCKER_REGISTRY_PORT=5000 \
-p 9092:80 \
-d konradkleine/docker-registry-frontend:v2
