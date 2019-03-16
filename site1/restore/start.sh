#!/bin/bash
#Petit script pour lancer la restauration facilement
#zf190316.1057

echo -e "
ATTENTION, ce script dois être lancé DANS le container Wordpress !

On utilise pour cela le petit script restore.sh qui se trouve dans le dossier restore en local sur le serveur (là où il y a le docker-compose) mais qui en fait se trouve dans /root/restore dans le container de Wordpress. Pour cela, il faut en premier entrer dans le container Wordpress, on fait ceci depuis le dossier où se trouve de docker-compose:
docker-compose exec wordpress bash

puis on va dans le dossier /root/restore dans le container:
cd /root/restore/

enfin on fait un cat du fichier start.sh pour s'en inspirer:
cat start.sh
"

#/root/restore/restore.sh toto.zip somewordpress!
#/root/restore/restore.sh makerspace-lausanne-pw8000-1549298080-complete-2019-02-04-17-36-01.zip somewordpress!
/root/restore/restore.sh makerspace-lausanne-ch-1549360584-complete-2019-03-16-00-25-00.zip somewordpress!
