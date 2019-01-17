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

echo "Removing transmission-gtk and tranmission-cli"

sudo pacman -Rs transmission-gtk transmission-cli

echo "Installing qtbittorrent"

sudo pacman -S qbittorrent


echo "################################################################"
echo "###                    All done                             ####"
echo "################################################################"
