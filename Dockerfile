FROM nginx:1.16-alpine

ADD conf.d/ /etc/nginx/conf.d/
COPY nginx.conf dest/etc/nginx/nginx.conf


VOLUME /var/www/html
WORKDIR /var/www/html

