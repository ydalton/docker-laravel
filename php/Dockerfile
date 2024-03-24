FROM alpine:latest

RUN adduser -Du 1000 nginx

RUN apk add \
	php \
	php-pdo \
	php-fpm \
	php-mbstring \
	php-pdo_mysql \
	php-dom \
	php-curl \
	php-session \
	php-tokenizer \
	php-xml \
	php-fileinfo

COPY www.conf /etc/php82/php-fpm.d/

CMD ["/usr/sbin/php-fpm82", "-F"]
