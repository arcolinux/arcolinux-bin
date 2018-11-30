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

echo "We uninstall first the files that are coming from the ArcoLinux iso,"
echo "then we install the same files from the ArcoLinux-system-config-git package."
echo "Essentially nothing has changed."
echo "But as from now we can manage these files with pacman and update them."

echo "First we update to get the new package in our database"

sudo pacman -Syyu

sudo rm /etc/modprobe.d/disable-evbug.conf
sudo rm /etc/modprobe.d/nobeep.conf
sudo rm /etc/modprobe.d/snd_pcsp.conf

sudo rm /etc/sysctl.d/99-sysctl.conf

sudo rm /etc/udev/rules.d/60-ioschedulers.rules

sudo rm /etc/X11/xorg.conf.d/99-killX.conf

sudo rm /usr/share/applications/arcolinux-hello.desktop

sudo rm /usr/share/icons/hicolor/256x256/apps/arco-calamares-logo.png
sudo rm /usr/share/icons/hicolor/256x256/apps/distributor-logo-arcolinux.svg



sudo pacman -S arcolinux-system-config-git --noconfirm


echo "################################################################"
echo "###                    All done                             ####"
echo "################################################################"
