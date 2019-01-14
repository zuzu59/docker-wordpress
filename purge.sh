#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf190113.1133

docker-compose down -v --remove-orphans
