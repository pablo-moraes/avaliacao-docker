FROM ubuntu
RUN apt-get update && apt-get install -y apache2 && apt clean
ENTRYPOINT ["/usr/sbin/apache2"]
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/apache2"

LABEL Description="pablo/nginx"

VOLUME /var/www/html

EXPOSE 88