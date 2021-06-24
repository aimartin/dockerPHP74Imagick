FROM php:7.4-apache

RUN apt-get update && apt-get install -y imagemagick

ENTRYPOINT ["docker-php-entrypoint"]

WORKDIR /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
