# docker-wordpress
Infra de déploiement pour 4x sites Wordpress avec docker-compose


## Buts
Chaque site Wordpress a son propre docker-compose.yml et tourne dans son propre bac à sable !


## Installation
Simplement se positionner dans le bon dossier et faire:
```
./start.sh
```


## ATTENTION !
Aucun port de ces site Wordpress sont *exposés* sur le host. Ils ne sont donc exposés que depuis le reverse proxy Traefik 'dockérisé'.<br>
```
https://github.com/zuzu59/docker-traefik
```
Ils utilisent le réseau *interne frontend* de Docker !






zf190501.1845
