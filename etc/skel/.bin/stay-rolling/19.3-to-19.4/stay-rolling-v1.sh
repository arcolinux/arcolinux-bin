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

echo "#############################"
echo "REMOVALS"
echo "#############################"
echo "Removing bluez-firmware - moved to AUR"

sudo pacman -Rs bluez-firmware

echo "Removing wpa_actiond - moved to AUR and is orphaned"

sudo pacman -Rs wpa_actiond

echo
echo "#############################"
echo "INSTALLATIONS"
echo "#############################"
echo "We have installed these packages on the iso :"
echo
echo "NONE"
echo
echo "################################################################"
echo "###                    All done                             ####"
echo "################################################################"
