#!/bin/bash
#Petit script pour démarrer les 3x sites site, site2 et site3
#zf190221.1421

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cd ./site1
./start.sh

cd ../site2
./start.sh

cd ../site3
./start.sh

cd ..
docker container ls -a

