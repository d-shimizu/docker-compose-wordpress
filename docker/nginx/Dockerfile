FROM nginx:latest

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
      openssl \
      certbot \
      ssl-cert \
    && rm -rf /var/lib/apt/lists/*


COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/wordpress.conf /etc/nginx/conf.d/wordpress.conf
COPY ./nginx/.htpasswd /etc/nginx/conf.d/.htpasswd

COPY ./nginx/start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
