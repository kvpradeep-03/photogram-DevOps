#! /bin/bash
# This script is used to run the main program as an automation script.

touch /var/photogram/helloworld

#git clone https://github.com/kvpradeep-03/photogram.git /var/www/html

#sed replace the string in the file used in linux systems
#enalbe the short_open_tag in php.ini file
sed -i 's/^short_open_tag = .*/short_open_tag = On/' /etc/php/8.3/apache2/php.ini


mv /var/photogram/photogramconfig.json /var/www


/usr/sbin/apache2ctl -D FOREGROUND

