#!/bin/bash

# Secure root account
mysql -e "UPDATE mysql.user SET Password = PASSWORD('passwordDbUniv01') WHERE User = 'root'"
# Create database
mysql -e "CREATE DATABASE IF NOT EXISTS webiptables"
# Create application account
mysql -e "GRANT ALL ON *.* TO 'websiteaccount'@'localhost' IDENTIFIED BY 'passwordDbUniv01' WITH GRANT OPTION;"
# Make our changes take effect
mysql -e "FLUSH PRIVILEGES"

