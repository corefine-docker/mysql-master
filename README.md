# mysql-master

FROM mysql:5.7

docker run --name mysql-master -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e SYNC_PASSWORD=sync -v /data/docker_volume/mysql_master/data:/var/lib/mysql -v /data/docker_volume/mysql_master/conf:/etc/mysql/conf.d -d fine/mysql-master
