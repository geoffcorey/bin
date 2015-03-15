#!/bin/sh

usage()
{
    echo "bootstrap a new system for development"
    echo "Supporting:"
    echo " Ubuntu"
    echo ""
    echo "./bootstrap.sh"
    echo "\t-h --help"
    echo "\t--golang"
    echo "\t--nodejs"
    echo "\t--x11"
    echo "\t--mysql"
    echo "\t--redis"
    echo "\t--mongodb"
    echo ""
}

install()
{
	DISTRO=`cat /etc/lsb-release | head -n 1 | awk 'BEGIN {FS="="} {print $2}'`
	case "${DISTRO}" in
	    Ubuntu) ubuntuInstall
		;; 
	    *) echo "Unsupported bootstrap system ${DISTRO}"
		exit 1
		;;
	esac
	neoVim
}

ubuntuInstall()  
{
    echo "Ubuntu install"
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install vcsh mr neovim git zsh curl git build-essential libssl-dev ssh python-pip zsh silversearcher-ag cmake python2.7-dev figlet weechat wget mongodb-clients redis-tools mysql-client ctags
    if [ $NODEJS = yes ]; then
	curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
	source ~/.nvm/nvm.sh
        nvm install stable 
    fi
    if [ $GOLANG = yes ]; then
        wget https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz
        sudo tar -C /usr/local -xzf /tmp/go1.4.linux-amd64.tar.gz
    fi
    if [ $X11 = yes ]; then
       sudo apt-get --allow-unauthenticated install sur5r-keyring 
       sudo apt-get update
       sudo apt-get install i3 conky acpi pactl xbacklight google-chrome-stable terminator
    fi
    if [ $AWS = yes ]; then
	sudo pip install awscli
    fi
    if [ $MYSQL = yes ]; then
	sudo apt-get install mysql 
    fi
    if [ $REDIS = yes ]; then
	sudo apt-get install redis 
    fi
    if [ $MONGODB = yes ]; then
	sudo apt-get install mongodb 
    fi
    if [ $RUBY = yes ]; then
        gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
        curl -sSL https://get.rvm.io | bash -s stable --ruby
	source ~/.rvm/scripts/rvm
    fi
}

# NeoVim Setup
neoVim()
{
    pip2 install --user neovim
    curl ~/.nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall 
}

GOLANG="no"
NODEJS="no"
X11="no"
AWS="no"
REDIS="no"
MYSQL="no"
MONGODB="no" 
RUBY="no" 
while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    VALUE=`echo $1 | awk -F= '{print $2}'`
    case $PARAM in
        -h | --help)
            usage
            exit
            ;;
        --golang)
            GOLANG="yes" 
            ;;
        --nodejs)
            NODEJS="yes"
            ;;
        --ruby)
            RUBY="yes"
            ;;
        --x11)
            X11="yes"
            ;;
        --aws)
            AWS="yes"
            ;;
        --mongodb)
            MONGODB="yes"
            ;;
        --redis)
            REDIS="yes"
            ;;
        --mysql)
            MYSQL="yes"
            ;;
        *)
            echo "ERROR: unknown parameter \"$PARAM\""
            usage
            exit 1
            ;;
    esac
    shift
done

install()
