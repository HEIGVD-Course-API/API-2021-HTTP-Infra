FROM nginx:latest

MAINTAINER Pascal Perrenoud <pascal.perrenoud@heig-vd.ch>

# Vire les fichiers par défaut
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html
RUN rm /usr/share/nginx/html/50x.html

# Copy www content to the server
COPY content /usr/share/nginx/html

# Copy les configs dans /etc/nginx/conf.d
COPY config /etc/nginx/conf.d

# Expose le port 80 (HTTP) au host
# TODO : à quoi ça sert ? Évite de mapper au run ?
EXPOSE 80

# TODO : Je pose ça là comme ça, au cas où lol
# CMD ["java", "-jar", "/opt/app/MockMock.jar", "-p", "25", "-h", "80"]
