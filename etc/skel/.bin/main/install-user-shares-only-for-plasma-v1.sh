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
#source fedora 23 : https://opsech.io/posts/2016/Apr/06/sharing-files-with-kde-and-samba.html

echo "################################################################"
echo "First run the script to install samba"
echo "Then run this script if you want to be able to right mouse click"
echo "on a folder in Plasma/Dolphin to share with others in your network"
echo "Remember to reboot after installation"
echo "################################################################"

sudo pacman -S kdenetwork-filesharing --noconfirm --needed

file="/etc/samba/smb.conf"

sudo sed -i '/^\[global\]/a \
\
usershare allow guests = true \
usershare max shares =  5 \
usershare owner only = true \
usershare path = /var/lib/samba/shares' $file


sudo mkdir -p /var/lib/samba/shares
sudo groupadd shares
sudo gpasswd -a $USER shares
sudo chown root.shares /var/lib/samba/shares
sudo chmod 1770 /var/lib/samba/shares

echo "Now reboot"

echo "################################################################"
echo "#########     The user can now share folders    ################"
echo "################################################################"
