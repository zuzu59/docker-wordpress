#!/bin/bash
#Petit script pour démarrer les 4x sites: site1, site2, site3 et site4
#zf190507.1812

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cd ./site0
./start.sh

cd ../site1
./start.sh

cd ../site2
./start.sh

cd ../site3
./start.sh

#cd ../site4
#./start.sh

cd ..
./list.sh
