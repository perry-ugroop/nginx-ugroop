#!/bin/bash

if [[ -d /etc/nginx.default ]] ; then
    cp -av /etc/nginx.default/* /etc/nginx/
    rm -fR /etc/nginx.default/
fi

HOST=`hostname`

cat << EOF > /usr/share/nginx/html/ping.html
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Ping Yeah - $HOST</title>
</head>
<body>
<p>Hello, Yang and Jay!</p>
<p>Host: $HOST</p>
</body>
</html>
EOF

mkdir -p /usr/share/nginx/html/svc-test

cp /usr/share/nginx/html/ping.html /usr/share/nginx/html/svc-test/

nginx -g 'daemon off;'


