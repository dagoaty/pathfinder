FROM nginx
MAINTAINER  Iain J. Watson <iain@ij-watson.co.uk>

ADD . /var/www/default/
ADD docker-nginx.conf /etc/nginx/conf.d/default.conf

RUN rm -rf /var/www/default/.git* \
           /var/www/default/.ht* \
           /var/www/default/Dockerfile

EXPOSE 80 443
VOLUME ["/var/www/default"]

CMD ["nginx", "-g", "daemon off;"]
