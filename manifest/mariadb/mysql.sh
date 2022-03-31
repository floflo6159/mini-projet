#!/bin/bash

# Secure root account
mysql -e "UPDATE mysql.user SET Password = PASSWORD('password-db-univ01') WHERE User = 'root'"
# Create application account
mysql -e "GRANT ALL ON *.* TO 'website-account'@'localhost' IDENTIFIED BY 'password-db-univ01' WITH GRANT OPTION;"
# Make our changes take effect
mysql -e "FLUSH PRIVILEGES"