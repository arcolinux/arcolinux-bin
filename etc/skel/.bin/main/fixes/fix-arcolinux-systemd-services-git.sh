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

echo "When updating you may see this message coming from "
echo "arcolinux-systemd-services-git"
echo "error: failed to commit transaction (conflicting files)"
echo "Solution: remove the conflicting files and install the package"
echo "This script will do just that."

sudo rm -f /etc/systemd/system/pacman-init.service
sudo rm -f /etc/systemd/system/multi-user.target.wants/pacman-init.service
sudo pacman -S --noconfirm arcolinux-systemd-services-git


echo "###############################################################################"
echo "###                               DONE                                     ####"
echo "###############################################################################"
