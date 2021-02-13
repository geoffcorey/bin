#!/usr/bin/env bash
#########################################################
# Basics
#########################################################
echo "export PATH=${PATH}:~/bin" >>~/.profile
#########################################################
# Node.js
#########################################################
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.bashrc
nvm install node
npm install -g fx vtop jsbeautify neovim loopback-cli eslint markdownlint
#########################################################
# Go
#########################################################
#cd ~
#wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
#tar -xzf go1.7.3.linux-amd64.tar.gz
source ~/.profile
git config --global user.email "geoff@geoffcorey.com"
git config --global user.name "Geoff Corey"
#########################################################
# Repositories
#########################################################
mkdir -p ~/src/github.com/cytopia
git clone git@github.com:cytopia/i3blocks-modules.git
mkdir -p ~/src/github.com/vivien
git clone git@github.com:vivien/i3blocks.git
git clone git@github.com:vivien/i3blocks-contrib.git
mkdir -p ~/src/github.com/morhetz
git clone git@github.com:morhetz/gruvbox.git
mkdir -p ~/src/github.com/wertarbyte
git clone git@github.com:wertarbyte/autorandr.git
