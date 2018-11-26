#!/bin/bash
#set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "################################################################"
echo "Disabling services"
echo "################################################################"

sudo systemctl disable smb.service
sudo systemctl disable nmb.service
sudo systemctl disable avahi-daemon.service
sudo systemctl disable winbind.service

echo "################################################################"
echo "Uninstalling packages"
echo "################################################################"

sudo pacman -R samba
sudo pacman -R nss-mdns

echo "################################################################"
echo "Deleting ArcoLinux config files"
echo "################################################################"

sudo rm  /etc/samba/smb.conf
sudo rm  /etc/samba/smb.conf.orginal

echo "################################################################"
echo "###  Samba and all related packages and services are gone   ####"
echo "################################################################"
