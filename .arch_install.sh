#!/bin/bash
cd ~
clear

# Programs to install: (supplement)
#
# Dropbox

# Installing packages, updating system and creating directories
sudo pacman -Sy --noconfirm
sudo pacman -S --noconfirm snapd
sudo pacman -S --noconfirm wine
sudo pacman -S --noconfirm texlive
sudo pacman -S --noconfirm calibre
sudo pacman -S --noconfirm arduino
sudo pacman -S --noconfirm newsbeuter
sudo pacman -S --noconfirm morse
sudo pacman -S --noconfirm wireshark
sudo pacman -S --noconfirm skypeforlinux
sudo pacman -S --noconfirm slack-desktop
sudo pacman -S --noconfirm libreoffice
sudo pacman -S --noconfirm vim
sudo pacman -S --noconfirm vlc
sudo pacman -S --noconfirm python3
sudo pacman -S --noconfirm dos2unix
sudo pacman -S --noconfirm firefox
sudo pacman -S --noconfirm gimp
sudo pacman -S --noconfirm alsa
sudo pacman -S --noconfirm acpi
sudo pacman -S --noconfirm audacity
sudo pacman -S --noconfirm compton
sudo pacman -S --noconfirm nm-applet
sudo pacman -S --noconfirm volumeicon
sudo pacman -S --noconfirm xrandr
sudo pacman -S --noconfirm google-chrome
sudo pacman -S --noconfirm spotify
sudo pacman -S --noconfirm nmap
sudo pacman -S --noconfirm john
sudo pacman -S --noconfirm gqrx
sudo pacman -S --noconfirm tmux
sudo pacman -S --noconfirm netcat
sudo pacman -S --noconfirm httrack
sudo pacman -S --noconfirm pm-utils
sudo pacman -S --noconfirm macchanger
sudo pacman -S --noconfirm aircrack-ng
sudo pacman -S --noconfirm network-manager
sudo pacman -S --noconfirm proxychains
sudo pacman -S --noconfirm xbacklight
sudo pacman -S --noconfirm tcpdump
sudo pacman -S --noconfirm hping3
sudo pacman -S --noconfirm ranger
sudo pacman -S --noconfirm zathura
sudo pacman -S --noconfirm irssi
sudo pacman -S --noconfirm htop
sudo pacman -S --noconfirm feh
sudo pacman -S --noconfirm git
#sudo pacman -S --noconfirm nodejs
#sudo pacman -S --noconfirm sonic-pi
#sudo pacman -S --noconfirm deluge
#sudo pacman -S --noconfirm freecad
#sudo pacman -S --noconfirm thunderbird
#sudo pacman -S --noconfirm mupen64plus
#sudo mkdir /pentest
#cd /pentest

# Installing se-toolkit
#sudo git clone https://github.com/trustedsec/social-engineer-toolkit.git
#cd social-engineer-toolkit/
#sudo python setup.py install

# Vim plugins
cd ~
mkdir -p .vim/bundle
cd .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim
vim +PluginInstall +qall # Install plugins


## Programs ##
#cd ~
#sudo snap install mailspring # Mailspring - Email client

# Nordvpn
#wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
#sudo apt -y install nordvpn-release_1.0.0_all.deb
#rm nordvpn-release_1.0.0_all.deb

# Dropbox
#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
#sudo apt -y install dropbox_2019.02.14_amd64.deb
#rm dropbox_2019.02.14_amd64.deb

# Google Chrome
git clone https://aur.archlinux.org/google-chrome.git /tmp/
cd /tmp/google-chrome/
makepkg -s --noconfirm
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ~
rm -rf /tmp/google-chrome/

# Git setup
git config --global core.editor vim
git config --global user.name "patricab"
git config --global user.email "pigface.survey@gmail.com"

# Upgrade system and reboot
sudo pacman -Su --noconfirm
sudo reboot
