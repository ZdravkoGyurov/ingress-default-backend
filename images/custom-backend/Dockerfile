FROM nginx:stable-alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./default.conf /etc/nginx/nginx.conf
COPY content/ /var/www/html/

RUN chmod -R 777 /var/cache/nginx/
RUN chmod -R 777 /var/run/
RUN chmod -R 777 /etc/nginx/