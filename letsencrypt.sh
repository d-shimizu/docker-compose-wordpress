#!/bin/bash

MAIL_ADDRESS=foo@example.jp
DOMAIN=dev00.blog.dshimizu.jp


sudo yum -y install epel-release
sudo yum -y install certbot

rm -rf /etc/letsencrypt/live/${DOMAIN}
certbot certonly -n --keep-until-expiring --agree-tos \
  --webroot --webroot-path /var/lib/letsencrypt \
  --cert-name ${DOMAIN} \
  -m ${MAIL_ADDRESS} -d ${DOMAIN}
