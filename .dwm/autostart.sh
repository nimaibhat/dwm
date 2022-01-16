#!/bin/sh
# These are just some of my personal background things, you can put whatever
picom --experimental-backends -b & # For picom-ibhagwan-git
xwallpaper --zoom ~/.config/wall.png & # For setting wallpaper, need to have xwallpaper installed through pacman
dwmblocks & # If using dwmblocks keep this line
ckb-next --background & 
sudo ntpd -qg & # To sync time (I have some clock drift not sure why)
