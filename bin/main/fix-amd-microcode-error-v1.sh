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

echo "Run this if you see an error in your bootup screen or dmesg about microcode"

sudo pacman -S amd-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "####                             Fix done                 ######"
echo "################################################################"
