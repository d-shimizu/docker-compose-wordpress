FROM php:fpm
RUN docker-php-ext-install mysqli pdo_mysql

#COPY ./php-fpm/php.ini /usr/local/etc/php/
COPY ./wordpress /var/www/html/wordpress 
