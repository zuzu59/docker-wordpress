#!/bin/bash
#Petit script pour démarrer tout le binz
#zf190113.1456
#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

#docker-compose up
docker-compose up -d

echo -e "


pour l'arrêter il faut faire:

docker-compose stop


pour le redémarrer il faut faire:

docker-compose start


pour enlever les container mais pas les datas il faut faire:

docker-compose down


pour enlever les container ET aussi les datas il faut faire:

docker-compose down -v


"


