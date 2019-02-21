#!/bin/bash
#Petit script pour effacer TOTALEMENT les 3x sites site, site2 et site3
#zf190221.1422

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cd ./site1
./purge.sh
cd ../site2
./purge.sh
cd ../site3
./purge.sh

