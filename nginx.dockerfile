FROM nginx:1.14

COPY ./nginx.conf /etc/nginx/conf.d/
COPY . /var/www/project