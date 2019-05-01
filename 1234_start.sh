#!/bin/bash
#Petit script pour démarrer les 4x sites: site1, site2, site3 et site4
#zf190501.1808

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cd ./site1
./start.sh

cd ../site2
./start.sh

cd ../site3
./start.sh

cd ../site4
./start.sh

cd ..
./list.sh
