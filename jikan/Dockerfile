FROM php:7.3.11-apache-buster

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apt-get update && apt-get install -y \
    openssl \
    git \
    unzip \
 && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
 && composer --version \
 && a2enmod rewrite \
 && service apache2 restart \
 && git clone https://github.com/jikan-me/jikan-rest.git . \
 && composer install --prefer-dist --no-progress --no-suggest --classmap-authoritative  --no-interaction \
 && git checkout a3ce8dbe5c44403d6fa28c18e4bb11d79fb9ac31

ADD .env /run-jikan.sh ./

ENTRYPOINT ["./run-jikan.sh"]
