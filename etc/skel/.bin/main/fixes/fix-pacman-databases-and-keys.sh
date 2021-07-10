#!/bin/bash
#set -e
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################

echo "Removing the pacman databases"

sudo rm /var/lib/pacman/sync/*

echo "Removing /etc/pacman.d/gnupg files"

sudo rm -r /etc/pacman.d/gnupg/*

sudo pacman-key --init

sudo pacman-key --populate


echo "###############################################################################"
echo "###                               DONE                                     ####"
echo "###############################################################################"
