#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf190220.1808

docker-compose down -v --remove-orphans
sudo rm -rf ./wp-content

