FROM nginx:1.16-alpine

ADD conf.d/ /etc/nginx/conf.d/
COPY nginx.conf dest/etc/nginx/nginx.conf

ADD ./run.sh /
RUN chmod 777 /run.sh

# 环境变量
ENV TYPE="laravel"
ENV FPM_HOST="fpm_host"

VOLUME /var/www/html
WORKDIR /var/www/html

CMD ["/run.sh"]