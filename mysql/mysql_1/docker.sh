#/bin/sh

docker stop mysql_1
docker rm mysql_1

docker run -d --restart=always --name=mysql_1 --network=mysql --ip=172.172.0.2 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v ~/work/docker/mysql/mysql_1/my.cnf:/etc/my.cnf -v ~/data/docker/mysql/mysql_1/mysql:/var/lib/mysql -v ~/data/docker/mysql/mysql_1/mysql-files:/var/lib/mysql-files mysql/mysql-server:5.7

