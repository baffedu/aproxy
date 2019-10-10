#!/bin/bash
if [ $TYPE == "laravel" ]
then
	rm /etc/nginx/conf.d/front.conf
else 
	rm /etc/nginx/conf.d/laravel.conf
