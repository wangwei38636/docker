#/bin/sh



docker stop mysql_56

docker rm mysql_56



docker run -d --restart=always --name=mysql_56 --network=mysql --ip=172.172.0.3 -p 3307:3306 -e MYSQL_ROOT_PASSWORD=123456 -v ~/work/docker/mysql/mysql_56/my.cnf:/etc/my.cnf -v ~/data/docker/mysql/mysql_56/mysql:/var/lib/mysql -v ~/data/docker/mysql/mysql_56/mysql-files:/var/lib/mysql-files mysql/mysql-server:5.6


