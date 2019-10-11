#!/bin/bash

rm /etc/nginx/conf.d/default.conf

if [ $TYPE == "laravel" ]
then
    sed -i "s/{fpm_host}/"$FPM_HOST"/g"  /etc/nginx/conf.d/laravel.conf
	rm /etc/nginx/conf.d/front.conf
else 
	rm /etc/nginx/conf.d/laravel.conf
fi

nginx -g 'daemon off;'