FROM php:5.6.36-fpm-alpine
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
RUN docker-php-ext-install mysqli 
#&& sed -i 's/mirrors.ustc.edu.cn/dl-cdn.alpinelinux.org/g' /etc/apk/repositories
EXPOSE 9000
CMD ["php-fpm"]
