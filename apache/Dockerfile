FROM debian:latest

RUN apt update
RUN apt install -y apache2 tzdata php php-mysql php-dom

RUN usermod -u 1000 www-data
RUN groupmod -g 1000 www-data

COPY htaccess.conf /etc/apache2/conf-available

RUN a2enmod rewrite
RUN a2enconf htaccess.conf

CMD ["apachectl", "-DFOREGROUND"]

