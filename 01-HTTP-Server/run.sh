# Vide le dossier de logs local
rm -rf /Volumes/SD/Nextcloud/school/BA3-API/Labs/05-API-2021-HTTP-Infra/01-HTTP-Server/logs

# Arrête une éventuelle précédente instance du serveur
./stop.sh

# Run le docker en détaché, expose le port 80, map le dossier des logs
docker run --name 04-01-static-web \
-v /Volumes/SD/Nextcloud/school/BA3-API/Labs/05-API-2021-HTTP-Infra/01-HTTP-Server/logs:/var/log/nginx \
-p 80:80 \
-d \
mrdaves24/04-01-static-web

# Affiche si le docker est lancé
docker ps | grep "04-01-static-web"
