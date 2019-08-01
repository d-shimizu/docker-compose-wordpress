FROM nginx:latest

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
      openssl \
      certbot \
      ssl-cert \
    && rm -rf /var/lib/apt/lists/*


COPY ./web/nginx.conf /etc/nginx/nginx.conf
COPY ./web/wordpress.conf /etc/nginx/conf.d/wordpress.conf
COPY ./web/.htpasswd /etc/nginx/conf.d/.htpasswd

COPY ./web/start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
