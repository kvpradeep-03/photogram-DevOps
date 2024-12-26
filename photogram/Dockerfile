FROM ubuntu:latest

#Debian frontend noninteractive is used to avoid any prompts during installation
ARG DEBIAN_FRONTEND=noninteractive

#WORKDIR creats a dir and sets it as the working directory all the commands will be executed in this directory when image is up.
WORKDIR /var/photogram

RUN apt-get update && apt-get install apache2 -y

# Set the ServerName directive globally to suppress the warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN rm -rf /var/www/html/

#this line allows your Apache server to run PHP scripts and interact with a MySQL database. 
RUN apt-get install php libapache2-mod-php php-mysql -y

RUN apt-get install nano git -y

# '.' is a special character in linux which means current directory
COPY ./data .

# Make the main.sh script executable
RUN chmod +x /var/photogram/main.sh

#Volume is used to map the host directory to the container directory(/var/www/html) it just assumes the host directory is present operations may fail if the directory is not present
#VOLUME [ "/var/www/html" ]

#CMD is used to run the command when the container is up
CMD ["/bin/bash", "/var/photogram/main.sh"]


