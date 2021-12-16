# Based on latest image of nginx
FROM nginx:latest

MAINTAINER Pascal Perrenoud <pascal.perrenoud@heig-vd.ch>

# Remove default files of nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html
RUN rm /usr/share/nginx/html/50x.html

# Copy my www content to the server
COPY content /usr/share/nginx/html

# Copy my configuration files to /etc/nginx/conf.d
COPY config /etc/nginx/conf.d

# Export port 80/tcp to the host as we should use it to access the server from outside.
# This doesn't bind it to host ! It's only to tell that it *should* be mapped
EXPOSE 80/tcp
