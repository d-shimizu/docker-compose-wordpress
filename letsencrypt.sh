#!/bin/bash

MAIL_ADDRESS=shimizu.daisuke.sd@gmail.com
DOMAIN=dev04.blog.dshimizu.jp


sudo yum -y install epel-release
sudo yum -y install certbot

rm -rf /etc/letsencrypt/live/${DOMAIN}
certbot certonly -n --keep-until-expiring --agree-tos \
  --webroot --webroot-path /var/lib/letsencrypt \
  --cert-name ${DOMAIN} \
  -m ${MAIL_ADDRESS} -d ${DOMAIN}
