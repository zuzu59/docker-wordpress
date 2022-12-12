#!/bin/bash
#Petit script pour restorer un site wordpress à partir d'un backup fichiers et db
#zf190301.1713, zf221212.1723

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./restore.sh backupfile.zip mysql_root_password \n\n"
    exit
fi

apt update
apt install -y wget nano unzip default-mysql-client


#restore les fichiers
rm -R /var/www/html/*
rm /var/www/html/.htaccess
cd /var/www/html
unzip /root/restore/$1
chown -R www-data.www-data /var/www/html

#restaure la db

mysql -u root --password=$2 -h db -e "set global max_allowed_packet=64*1024*1024;"

mysql -u root --password=$2 -h db -e "DROP DATABASE wordpress;"
mysql -u root --password=$2 -h db -e "CREATE DATABASE wordpress;"
#mysql -u root  --password=$2 -h db wordpress < wordpress.sql
mysql -u root  --password=$2 -h db wordpress < webmas16_fb20.sql

