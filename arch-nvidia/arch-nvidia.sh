#!/bin/bash

sudo pacman -Sy

sudo pacman -S linux-zen linux-zen-headers

git clone https://github.com/Frogging-Family/nvidia-all.git

cd nvidia-all

makepkg -si

# Specify the new value for GRUB_CMDLINE_LINUX_DEFAULT
new_value='loglevel=3 quiet rd.driver.blacklist=nouveau modprobe.blacklist=nouveau nvidia-drm.modeset=1'

# Update the GRUB_CMDLINE_LINUX_DEFAULT parameter in the configuration file
sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT=\"$new_value\"/" /etc/default/grub

# Update the GRUB bootloader configuration
grub-mkconfig -o /boot/grub/grub.cfg

sudo mkinitcpio -P
