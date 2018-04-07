#!/usr/bin/env bash
sudo apt-get update
sudo apt-get -y install apache2
cat <<EOF >/var/www/html/index.html
<html>
<head>
<title> Hola desde ${1} </title>
</head>
<body>
<h1> Hola desde ${1} </h1>
</body>
</html>
EOF
