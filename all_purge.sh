#!/bin/bash
#Petit script pour nettoyer tout le binz
#ATTENTION, cela purge VRAIMENT tout le binz de Docker !
#zf190107.1707

./list.sh
read -p "Etes-vous certain de vouloir tout effacer ?"
read -p "Mais cela va VRAIMENT VRAIMENT tout effacer!"

docker container rm -f -v $(docker container ls -a -q)
docker image rm -f $(docker image ls -a -q)
docker volume rm $(docker volume ls -q)

