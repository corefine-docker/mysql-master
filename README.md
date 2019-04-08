# mysql-master

docker run --name mysql-master -p 3306:3306 -e MYSQL_ROOT_PASSWORD=jk@2019 -v /data/docker_volume/mysql_mr/data:/var/lib/mysql -v /data/docker_volume/mysql_mr/conf:/etc/mysql/conf.d -d fine/mysql-master
