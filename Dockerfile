FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libicu-dev \
        make \
        php5-dev \
        php-pear \
        libcurl4-gnutls-dev \
    && docker-php-ext-install intl mbstring

COPY apache-php/php/php.ini /usr/local/etc/php/
COPY apache-php/apache/apache2.conf /etc/apache2/apache2.conf
COPY apache-php/apache/symfony.conf /etc/apache2/sites-available/
COPY ./symfony /var/www/html/symfony

RUN chown -R www-data:www-data /var/www/html
RUN a2ensite symfony
RUN a2enmod rewrite
RUN service apache2 restart