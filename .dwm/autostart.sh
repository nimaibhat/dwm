#!/bin/sh

picom --experimental-backends -b &
xwallpaper --zoom ~/.config/wall.png &
dwmblocks & 
ckb-next --background &
sudo ntpd -qg &
