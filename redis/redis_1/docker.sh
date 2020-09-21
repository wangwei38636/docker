#/bin/sh

docker stop redis_1
docker rm redis_1

docker run -d --restart=always --name redis_1 --network=redis --ip=172.173.0.2 -p 6379:6379 -v ~/work/docker/redis/redis_1/redis.conf:/usr/local/etc/redis/redis.conf -v ~/data/docker/redis/redis_1/data:/data redis redis-server /usr/local/etc/redis/redis.conf


