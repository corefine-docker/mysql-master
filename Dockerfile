FROM mysql:5.7
RUN echo log-bin=mysql-bin >> /etc/mysql/mysql.conf.d/mysqld.cnf
RUN echo server-id=1 >> /etc/mysql/mysql.conf.d/mysqld.cnf
RUN cp ./master.sql /docker-entrypoint-initdb.d/
