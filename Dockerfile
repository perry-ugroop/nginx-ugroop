FROM nginx

RUN mv /etc/nginx /etc/nginx.default

COPY startup.sh /opt/bin/
RUN chmod 755 /opt/bin/startup.sh
CMD /opt/bin/startup.sh

# Expose ports
EXPOSE 80 443

# Expose mount volumes via VOLUME command
VOLUME ["/usr/share/nginx/html", "/var/log/nginx", "/etc/nginx"]

