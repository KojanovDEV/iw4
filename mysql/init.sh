#!/bin/bash

service mysql start

# root user parolini o'rnatish va bazani yaratish
mysql -e "CREATE DATABASE IF NOT EXISTS testdb;"
mysql -e "CREATE USER 'testuser'@'%' IDENTIFIED BY 'testpass';"
mysql -e "GRANT ALL PRIVILEGES ON testdb.* TO 'testuser'@'%';"
mysql -e "FLUSH PRIVILEGES;"

# servisni fon rejimda ishga tushirish
exec mysqld_safe
