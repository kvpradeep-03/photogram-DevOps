CREATE USER 'snauser'@'%' IDENTIFIED WITH mysql_native_password BY 'qwerty123@';

GRANT ALL PRIVILEGES ON *.* TO 'snauser'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'snauser'@'%' IDENTIFIED BY 'qwerty123@' WITH GRANT OPTION;     #gpt's prompt
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;

root user ==> u = root p = prad2003 or password
snauser ==> u = snauser p = qwerty123@

mysql -u snauser -p -h 3.110.56.117

