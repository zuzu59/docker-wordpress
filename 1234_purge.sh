#!/bin/bash
#Petit script pour effacer TOTALEMENT les 4x sites: site1, site2, site3 et site4 !
#zf190501.1809

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cd ./site1
./purge.sh

cd ../site2
./purge.sh

cd ../site3
./purge.sh

cd ../site4
./purge.sh

cd ..
./list.sh

