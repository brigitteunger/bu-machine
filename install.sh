#!/bin/sh
# Install basic development tools

echo "deb http://archive.canonical.com/ubuntu/ bionic partner" > /etc/apt/sources.list.d/canonical_partner.list
apt-get -y update
apt-get -y install wget
apt-get -y install git
apt-get -y install vim
apt-get -y install nautilus-dropbox
apt-get -y install keepassxc
apt-get -y install python3.8
apt-get -y install python3-pip
apt-get -y install python3-tk
pip3 install virtualenv
apt-get -y install python3-venv
apt-get -y install vlc
apt-get -y install ffmpeg
apt-get -y install jabref
apt-get -y install libx11-dev libatlas-base-dev
apt-get -y install libgtk-3-dev libboost-python-dev
apt-get -y install libboost-all-dev
apt-get -y install guvcview
apt-get -y install texlive-latex-recommended texlive-latex-extra


snap install code --classic
snap install cmake --classic
snap install slack --classic
snap install zoom-client

# install vpn client pritunl 
# copied from https://client.pritunl.com/#install
sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
deb https://repo.pritunl.com/stable/apt bionic main
EOF

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo apt-get update
sudo apt-get -y install pritunl-client-electron

#teams needs to be manually installed https://www.microsoft.com/de-de/microsoft-365/microsoft-teams/download-app
