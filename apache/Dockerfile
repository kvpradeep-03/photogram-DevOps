FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install apache2 -y
RUN rm -rf /var/www/html/index.html
RUN apt-get install php libapache2-mod-php php-mysql -yOSH_THEME="minimal"
COPY ./html/ /var/www/html/
CMD ["apachectl","-D","FOREGROUND"] 