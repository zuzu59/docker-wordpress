#!/bin/bash
#Petit script pour restorer un site wordpress à partir d'un backup fichiers et db
#zf190316.1055

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./restore.sh backupfile.zip mysql_root_password \n\n"
    exit
fi

apt update
apt install -y nano unzip mysql-client

#restore les fichiers
cd /var/www/html
rm -R /var/www/html/*
rm /var/www/html/.htaccess
unzip /root/restore/$1
chown -R www-data.www-data /var/www/html

#restaure la db
mysql -u root --password=$2 -h db -e "DROP DATABASE wordpress;"
mysql -u root --password=$2 -h db -e "CREATE DATABASE wordpress;"
mysql -u root  --password=$2 -h db wordpress < wordpress.sql

