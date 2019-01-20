#!/bin/bash


#
# * The first one only
#
if [ ! -d "/etc/letsencrypt/live/${DOMAIN}" ]; then
    mkdir -p /etc/letsencrypt/live/${DOMAIN}
    mkdir -p /var/lib/letsencrypt
    cp -pr /etc/ssl/certs/ssl-cert-snakeoil.pem /etc/letsencrypt/live/${DOMAIN}/fullchain.pem
    cp -pr /etc/ssl/private/ssl-cert-snakeoil.key /etc/letsencrypt/live/${DOMAIN}/privkey.pem
fi

nginx

if [ ! -e "/etc/letsencrypt/initialize" ]; then
    rm -rf /etc/letsencrypt/live/${DOMAIN}
    certbot certonly -n --keep-until-expiring --agree-tos \
      --webroot --webroot-path /var/lib/letsencrypt \
      -m ${CERTBOT_MAIL} -d ${DOMAIN}
fi

touch /etc/letsencrypt/initialize
certbot renew

nginx -s stop && nginx -g 'daemon off;'
