FROM ubuntu:18.04

RUN apt-get update && apt-get install -y nginx && \
chown -R www-data:www-data /var/lib/nginx

ARG hostname

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY index.html /var/www/html/index.html
CMD ["nginx"]

EXPOSE 80 443



