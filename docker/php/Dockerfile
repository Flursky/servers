FROM php:7.4-fpm

RUN apt update && apt install -y \
        git curl wget libz-dev zip \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j 2 gd 

## Enable extensions
RUN docker-php-ext-enable gd

RUN curl -Ss https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm -f composer.phar

CMD [ "/bin/bash" ]