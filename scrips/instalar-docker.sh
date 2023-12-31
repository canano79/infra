#!/bin/bash
# Instalar Docker
sudo apt-get update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo service docker start

#Agregar el usuario ubuntu al grupo docker
sudo usermod -a -G docker ubuntu