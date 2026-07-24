#!/bin/bash

dnf update -y
dnf install nginx -y

systemctl start nginx
systemctl enable nginx

cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>DecodeLabs</title>
</head>
<body>
    <h1>Welcome to DecodeLabs: Mission Accomplished</h1>
</body>
</html>
EOF
