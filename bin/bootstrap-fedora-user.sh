#!/usr/bin/env bash
# Basics
echo "export PATH=${PATH}:~/bin" >>~/.profile
# Node.js
cd ~
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source ~/.bashrc
nvm install node
npm install -g fx vtop jsbeautify neovim loopback-cli eslint
# Go
cd ~
wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
tar -xzf go1.7.3.linux-amd64.tar.gz
source ~/.profile
git config --global user.email "gwcorey@us.ibm.com"
git config --global user.name "Geoff Corey"


