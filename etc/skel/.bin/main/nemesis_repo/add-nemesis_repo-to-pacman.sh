#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website   : https://www.erikdubois.be
# Website	: https://www.arcolinux.info
# Website	: https://www.arcolinux.com
# Website	: https://www.arcolinuxd.com
# Website	: https://www.arcolinuxb.com
# Website	: https://www.arcolinuxiso.com
# Website	: https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# add nemesis-repo to /etc/pacman.conf

if grep -q nemesis_repo /etc/pacman.conf; then
  echo "nemesis_repo is already in /etc/pacman.conf"
else
echo '

[nemesis_repo]
SigLevel = Optional TrustedOnly
Server = https://erikdubois.github.io/$repo/$arch' | sudo tee -a /etc/pacman.conf
fi

#sudo pacman -Sy

#sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-arc-git
#sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-arc-mint-grey-git
#sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-arc-mint-red-git
#sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-tela-git
#sudo pacman -S --noconfirm --needed papirus-dark-tela-git
#...

echo "################################################################"
echo "################### done"
echo "################################################################"