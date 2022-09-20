#!/bin/sh

while true; do
   xsetroot -name "$( date +"%d/%m/%Y %H:%M:%S" )"
   sleep 30s
done &

picom -b --no-fading-openclose --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil
feh --no-fehbg --recursive --bg-fill --randomize ~/.wallpapers/* &

betterlockscreen --fx dimblur --blur 0.4 --dim 40 -u ~/.wallpapers &

exec dwm_run
