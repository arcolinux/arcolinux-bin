#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Do not just run this. Examine and judge. Run at own risk."
echo "This script will remove the linux kernel and its headers."
echo
echo "Press enter to continue"; read dummy;

packages="linux-xanmod-lts linux-xanmod-lts-headers"

sudo pacman -R --noconfirm $packages

echo "Reboot now"
