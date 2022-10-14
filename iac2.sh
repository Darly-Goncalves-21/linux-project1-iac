#!/bin/bash

echo "Atualizando Sistema"
update -y
upgrade -y

echo"Instalando apache2"
apt install apache2 -y
cd /var/www/html/
rm -f index.html

echo "Instalando unzip"
apt install unzip -y

echo "Fazendo Download do projeto web"
cd /tmp/
wget https://github.com/Darly-Goncalves-21/web/archive/refs/heads/main.zip

echo "Descompactando projeto"
cd /tmp/
unzip main.zip

echo "Copiando projeto para pasta do servidor apache"
cd web-main
cp -R * /var/www/html/
