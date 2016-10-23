FROM nginx
MAINTAINER  Iain J. Watson <iain@ij-watson.co.uk>

ADD README.md \
    app \
    build.js \
    config.rb \
    export \
    favicon \
    gulpfile.js \
    index.php \
    js \
    logs \
    node_modules \
    package.json \
    public sass \
    tmp \
    /var/www/default/

ADD docker-nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
VOLUME ["/var/www/default"]

CMD ["nginx", "-g", "daemon off;"]
