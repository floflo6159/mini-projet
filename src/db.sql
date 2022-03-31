CREATE USER 'iptablesApp'@'localhost' IDENTIFIED BY 'myPwd4Univ';
ALTER USER 'iptablesApp'@'localhost' IDENTIFIED WITH mysql_native_password BY 'myPwd4Univ';
GRANT ALL PRIVILEGES ON * . * TO 'iptablesApp'@'localhost';
FLUSH PRIVILEGES;