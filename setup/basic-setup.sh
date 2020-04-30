#!/usr/bin/env bash

# install packages
sudo apt-get update

sudo apt-get install -y build-essential fakeroot debhelper autoconf \
automake libssl-dev graphviz python-all python-qt4 \
python-twisted-conch libtool git tmux vim python-pip python-paramiko \
python-sphinx uuid-runtime linux-headers-`uname -r` dkms net-tools

sudo apt-get install -y debconf-utils
sudo echo  "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo apt-get install -y wireshark-common
sudo apt-get install -y wireshark
sudo addgroup vagrant wireshark


sudo apt-get install -y ssh git emacs sshfs

sudo apt install -y mininet python-ryu python-ryu-doc ryu-bin openvswitch-switch

sudo adduser vagrant ryu 

git clone https://github.com/osrg/ryu.git
