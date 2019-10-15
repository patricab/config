#!/bin/bash
cd ~
clear

dropbox
nordvpn

# Installing packages, updating system and creating directories
sudo apt-get -y update
sudo apt-get -y install morse
sudo apt-get -y install wireshark
sudo apt-get -y install skypeforlinux
sudo apt-get -y install nodejs
sudo apt-get -y install slack-desktop
sudo apt-get -y install sonic-pi
sudo apt-get -y install libreoffice
sudo apt-get -y install vim
sudo apt-get -y install vlc
sudo apt-get -y install deluge
sudo apt-get -y install python3
sudo apt-get -y install dos2unix
sudo apt-get -y install firefox
sudo apt-get -y install freecad
sudo apt-get -y install gimp
sudo apt-get -y install alsa
sudo apt-get -y install acpi
sudo apt-get -y install audacity
sudo apt-get -y install compton
sudo apt-get -y install nm-applet
sudo apt-get -y install volumeicon
sudo apt-get -y install xrandr
sudo apt-get -y install google-chrome
sudo apt-get -y install spotify
sudo apt-get -y install thunderbird
sudo apt-get -y install nmap
sudo apt-get -y install john
sudo apt-get -y install gqrx
sudo apt-get -y install tmux
sudo apt-get -y install netcat
sudo apt-get -y install httrack
sudo apt-get -y install pm-utils
sudo apt-get -y install macchanger
sudo apt-get -y install aircrack-ng
sudo apt-get -y install network-manager
sudo apt-get -y install proxychains
sudo apt-get -y install xbacklight
sudo apt-get -y install mupen64plus
sudo apt-get -y install tcpdump
sudo apt-get -y install hping3
sudo apt-get -y install ranger
sudo apt-get -y install zathura
sudo apt-get -y install irssi
sudo apt-get -y install htop
sudo apt-get -y install feh
sudo apt-get -y install git
sudo mkdir /pentest
cd /pentest

# Installing se-toolkit
sudo git clone https://github.com/trustedsec/social-engineer-toolkit.git
cd social-engineer-toolkit/
sudo python setup.py install

# Install vim plugins
cd ~
mkdir -p .vim/bundle
cd .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/tpope/vim-surround
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/tpope/vim-repeat
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/mhinz/vim-startify
git clone https://github.com/jiangmiao/auto-pairs

# Upgrade system and reboot
sudo apt-get -y upgrade
sudo reboot