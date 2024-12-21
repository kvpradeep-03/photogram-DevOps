FROM ubuntu:latest
#Debian frontend noninteractive is used to avoid any prompts during installation
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install apache2 -y
RUN rm -rf /var/www/html/index.html
#this line allows your Apache server to run PHP scripts and interact with a MySQL database. 
RUN apt-get install php libapache2-mod-php php-mysql -y
COPY ./html/ /var/www/html/
#Volume is used to map the host directory to the container directory(/var/www/html) it just assumes the host directory is present operations may fail if the directory is not present
#-D is directive to run apache in foreground
CMD ["apachectl","-D","FOREGROUND"] 