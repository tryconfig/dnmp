FROM php:7.3.0-fpm-alpine3.8
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
RUN docker-php-ext-install mysqli pdo pdo_mysql
#&& sed -i 's/mirrors.ustc.edu.cn/dl-cdn.alpinelinux.org/g' /etc/apk/repositories
EXPOSE 9000
CMD ["php-fpm"]
