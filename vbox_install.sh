#!/bin/bash

#install virtualbox for test environment:
#Fedora 31

sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras


cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo
[virtualbox]
name=Fedora $releasever - $basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/29/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
EOF

sudo dnf search -y virtualbox


sudo dnf install VirtualBox-6.1
usermod -a -G vboxusers $USER

newgrp vboxusers

### reboot
### run sudo vboxconfig
