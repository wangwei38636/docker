#/bin/sh

docker stop redis
docker rm redis

docker run -d --restart=always --name redis -p 6379:6379 -v ~/work/docker/redis/redis_1/redis.conf:/usr/local/etc/redis/redis.conf -v ~/data/docker/redis/redis_1/data:/data redis redis-server /usr/local/etc/redis/redis.conf


