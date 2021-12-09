# 01. Serveur HTTP statique
## Objectifs
- Build et run un Docker avec un serveur web statique avec un peu de contenu
- Avoir quelques pages web statiques un peu jolies et fonctionnelles
- Savoir expliquer ce qui est fait dans le Dockerfile
- Montrer où se trouve les fichiers de configuration du serveur et comment y accéder
- Documenter la configuration

## Dockerfile et build.sh
L'image de mon serveur web se base sur l'image officielle de nginx dans sa dernière version. Je commence par supprimer les fichiers par défaut de nginx (la configuration par défaut du serveur et le index.html par défaut). Ensuite de quoi, je copie mes propres fichiers de configuration du serveur ainsi que le contenu statique du serveur web. Je fini par exposer le port 80. L'instruction `EXPOSE 80/tcp` sert, en quelque sorte, de documentation simpliste des ports "publics" de l'image qu'il faut éventuellement publier au host quand cette image est déployée.  

Le fichier `build.sh` permet de construire l'image en se basant sur ce `Dockerfile`. Il est assez simple car il ne fait que appeler `docker build` et nommer l'image.

## run.sh
Le fichier `run.sh` permet de lancer un container basé sur cette image. Pour faciliter mes commandes, j'ai décidé de nommer ce container "04-01-static-web". Dans ce fichier, je commence par supprimer les anciens logs mappés sur le host.  

Le script démarre ensuite le container avec les paramètres suivant :
- Nom du container : 04-01-static-web
- Dossier log de nginx mappé sur le host
- Expose le port 80 au host
- Fonctionnement en mode détaché
- Lance l'image créée précédemment

## nginx configuration
Au lancement, nginx charge le fichier de configuration du serveur `/etc/nginx/nginx.conf` qui lui même inclut d'autres fichiers de configuration où nous placeront les configurations des différents services que nous voulons offrir. Ces fichiers sont inclus par la directive `include /etc/nginx/conf.d/*.conf;`. Tous les fichiers finissant par `.conf` du dossier `/etc/nginx/conf.d` seront donc utilisés pour configurer les server.
### Ma configuration
À des fins d'exemple, j'ai créé un serveur "principal" et un sous-domaine. Le sous-domaine ne répondra uniquement aux requêtes adressées à "sub.localhost" tandis que le domaine principal répondra à toutes les autres requêtes.
