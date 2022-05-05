#!/bin/bash
echo "Definindo permissão do usuário ubuntu..."
sudo usermod -aG sudo ubuntu

echo "Defina a senha do usuário Ubuntu"
sudo passwd ubuntu

sudo apt upgrade && sudo apt update -y

echo "Você deseja instalar interface gráfica?(y/n)"

then sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

echo "Instalação Java..."
java -version
if [ $? -eq 0 ]
then
echo \"java instalado\"
else
echo \"java não instalado\"
echo \"gostaria de instalar o java? S/n \"
read inst
if [ \"$inst\" == \"s\" ]
then
echo \"voce escolheu instalar o java\"
echo \"instalado repositorio\"
sleep 2
sudo git clone https://github.com/gcomartins/DataCat-App.git
clear
echo \"Atualizando repositorio\"
sleep 2
apt-get update -y
clear
echo \"escolha a versão que deseja instalar 7 ou 8\"
read versao
if [ \"$versao\" -eq 7 ]
then
echo \"escolheu a versão 7, preparando para instalar\"
apt-get install oracle-java7-installer -y
clear
echo \"java instalado versão 7\"
elif [ \"$versao\" -eq 8 ]
then
echo \"escolheu a versão 8, preparando para instalar\"
apt-get install oracle-java8-installer -y
clear
echo \"java instalado versão 8\"
else
echo \"versão não identificada\"
fi
else echo \"você escolheu não instalar\"
fi
fi
