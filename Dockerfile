FROM nginx
MAINTAINER  Iain J. Watson <iain@ij-watson.co.uk>


RUN rm -rf /var/www/default/*
ADD * /var/www/default/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
