FROM ubuntu:18.04

RUN echo "Asia/Tehran" >> /etc/timezone && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y php-fpm

EXPOSE 9000

CMD service php7.2-fpm start
