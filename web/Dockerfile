FROM nginx:latest

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
      openssl \
      certbot \
      ssl-cert \
    && rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./wordpress.conf /etc/nginx/conf.d/wordpress.conf
COPY ./.htpasswd /etc/nginx/conf.d/.htpasswd
