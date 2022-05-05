#!/bin/bash
echo "Definindo permissão do usuário ubuntu..."
sudo chmod -aG sudo ubuntu

echo "Defina a senha do usuário Ubuntu"
sudo passwd ubuntu

sudo apt upgrade && sudo apt update -y

sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y
