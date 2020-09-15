#!/bin/bash
set -e
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

#Erik key
sudo pacman-key --recv-keys 74F5DE85A506BF64
sudo pacman-key --lsign-key 74F5DE85A506BF64

#Marco key
sudo pacman-key --recv-keys F1ABB772CE9F7FC0
sudo pacman-key --lsign-key F1ABB772CE9F7FC0

#John key
sudo pacman-key --recv-keys 4B1B49F7186D8731
sudo pacman-key --lsign-key 4B1B49F7186D8731

echo "################################################################"
echo "#########   the signing keys should now be in   ################"
echo "################################################################"
