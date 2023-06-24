#!/bin/bash

sudo pacman -Sy

sudo pacman -S base-devel git htop neofetch vim flameshot cups firefox

git clone https://github.com/Jguer/yay.git

cd yay

makepkg -si

sudo systemctl enable cups

yay -S linux-zen linux-zen-headers

yay -Sy adobe-source-han-serif-tw-fonts adobe-source-han-serif-hk-fonts adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-hk-fonts adobe-source-han-serif-cn-font adobe-source-han-sans-kr-fonts-2.004-1  adobe-source-han-serif-kr-fonts-2.001-2 adobe-source-han-sans-jp-fonts-2.004-1  adobe-source-han-serif-jp-fonts-2.001

yay -S bash-completion python-click-completion git-completion ntfs-dkms