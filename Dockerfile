FROM nginx

RUN mv /etc/nginx /etc/nginx.default

COPY startup.sh /opt/bin/
RUN chmod 755 /opt/bin/startup.sh
CMD /opt/bin/startup.sh

EXPOSE 80 443

# Expose mount volumes
VOLUME ["/usr/share/nginx/html", "/var/log/nginx", "/etc/nginx"]

