#!/bin/bash

sudo pacman -Sy

sudo pacman -S linux-zen linux-zen-headers

git clone https://github.com/Frogging-Family/nvidia-all.git

cd nvidia-all

makepkg -si

sudo cp grub /etc/default/grub
