#!/bin/bash

rm /etc/nginx/conf.d/default.conf

if [ $TYPE == "laravel" ]
then
    sed -i "s/{fpm_host}/"$FPM_HOST"/g"  /etc/nginx/conf.d/laravel.conf
	rm /etc/nginx/conf.d/front.conf
	rm /etc/nginx/conf.d/generalphp.conf
else if [ $TYPE == "general"]
then
	rm /etc/nginx/conf.d/front.conf
	rm /etc/nginx/conf.d/laravel.conf
else 
	rm /etc/nginx/conf.d/laravel.conf
	rm /etc/nginx/conf.d/generalphp.conf
fi

nginx -g 'daemon off;'