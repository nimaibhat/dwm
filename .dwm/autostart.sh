#!/bin/sh

picom --experimental-backends -b & # For picom-ibhagwan-git
xwallpaper --zoom ~/.config/wall.png & # For setting wallpaper, need to have xwallpaper installed through pacman
dwmblocks & # If using dwmblocks keep this line
/usr/bin/syncthing serve --no-browser --logfile=default &
ckb-next --background &
sudo ntpd -qg & # To sync time (I have some clock drift not sure why)
