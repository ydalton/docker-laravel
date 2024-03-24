FROM alpine:latest

RUN apk add nginx

COPY default.conf /etc/nginx/http.d
COPY phpmyadmin.conf /etc/nginx/http.d

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
