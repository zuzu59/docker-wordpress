#!/bin/bash
#Petit script pour arrêter les 4x sites: site1, site2, site3 et site4
#zf200507.2223

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cd ./site0
./stop.sh

cd ../site1
./stop.sh

cd ../site2
./stop.sh

cd ../site3
./stop.sh

#cd ../site4
#./stop.sh

cd ..
./list.sh
