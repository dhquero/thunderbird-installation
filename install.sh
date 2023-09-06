#!/bin/sh

# Removendo versão atual do thunderbird
sudo rm -Rf /opt/thunderbird*
sudo rm -Rf /usr/bin/thunderbird
sudo rm -Rf /usr/share/applications/thunderbird.desktop

#sudo add-apt-repository ppa:mozillateam/thunderbird-stable
#udo apt-get update
#sudo apt-get upgrade
#sudo apt-get install xul-ext-lightning

# Versão do Thunderbird compatível com o SMTP:
wget http://archive.ubuntu.com/ubuntu/pool/main/t/thunderbird/thunderbird_91.8.0+build2-0ubuntu1_amd64.deb
sudo dpkg -i thunderbird_91.8.0+build2-0ubuntu1_amd64.deb

thunderbird --allow-downgrade
rm thunderbird_91.8.0+build2-0ubuntu1_amd64.deb

#Instalação Anydesk

sudo apt update && sudo apt install wget
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk -y

