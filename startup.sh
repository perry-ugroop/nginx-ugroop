#!/bin/bash

if [[ -d /etc/nginx.default ]] ; then
    cp -av /etc/nginx.default/* /etc/nginx/
    rm -fR /etc/nginx.default/
fi

cat << EOF > /usr/share/nginx/html/ping.html
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Ping</title>
</head>
<body>
<p>Hello, Yang and Jay!</p>
</body>
</html>
EOF

nginx -g 'daemon off;'


