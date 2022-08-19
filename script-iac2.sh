#!/bin/bash


echo "Atualizando sistema..."

apt-get update
apt-get upgrade -y


echo "instalando unzip e o apache2...."

apt-get install unzip -y
apt-get install apache2 -y

echo "baixando e copiando  os arquivos da aplicação...."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html



