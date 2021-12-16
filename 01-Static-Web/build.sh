# Stop le serveur s'il est éventuellement lancé
./stop.sh

# Build l'image dans le dossier actuel, basé sur le Dockerfile
docker build \
--tag mrdaves24/04-01-static-web \
.
