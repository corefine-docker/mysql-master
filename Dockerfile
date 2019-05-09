FROM mysql:5.7
ADD docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN echo 'Asia/Shanghai' >/etc/timezone
