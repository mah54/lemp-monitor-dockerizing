FROM ubuntu:18.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y php-fpm

EXPOSE 9000

CMD    ["php7.2-fpm"]
