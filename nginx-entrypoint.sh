#!/bin/ash
mkdir -p /etc/nginx/sites-enabled \
    /etc/nginx/sites-available;

sed -i "s/^\(\s*include \/etc\/nginx\/conf.d\/.*\)/#\1\n    include \/etc\/nginx\/sites-enabled\/\*.conf/" /etc/nginx/nginx.conf
