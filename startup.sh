#!/bin/bash

if [[ -d /etc/nginx.default ]] ; then
    cp -av /etc/nginx.default/* /etc/nginx/
    rm -fR /etc/nginx.default/
fi

echo '<!DOCTYPE html><html><head><meta charset="utf-8" /><title>Ping</title></head><body><p>Hello, people!</p></body></html>' > /usr/share/nginx/html/ping.html
nginx -g 'daemon off;'

