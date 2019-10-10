#!/bin/bash
if [ $TYPE == "laravel" ]
then
    sed -i "s/{fpm_host}/"$FPM_HOST"/g"  /etc/nginx/conf.d/laravel.conf
	rm /etc/nginx/conf.d/front.conf
else 
	rm /etc/nginx/conf.d/laravel.conf
fi