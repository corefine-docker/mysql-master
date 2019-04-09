FROM mysql:5.7
RUN echo log-bin=mysql-bin >> /etc/mysql/mysql.conf.d/mysqld.cnf
RUN echo server-id=SERVERID >> /etc/mysql/mysql.conf.d/mysqld.cnf
ADD ./master.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*
