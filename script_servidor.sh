#!/bin/bash

echo "Iniciando processo para servidor web..."
echo "Atualizando Servidor..."

apt update && upgrade

echo "Instalando Apache para servidor web"

apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos da aplicação web..."

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Processo finalizado!"
