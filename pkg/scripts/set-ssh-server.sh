#!/usr/bin/env bash
# update packages
sudo apt update && sudo apt upgrade
# install ssh server
sudo apt install openssh-server
# enable and start ssh server
sudo systemctl enable --now ssh
# configure UFW firewall to allow ssh
sudo ufw allow ssh

# deploy the public ssh key on the server
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
chmod -R go= ~/.ssh
cat id_rsa.pub >> ~/.ssh/authorized_keys