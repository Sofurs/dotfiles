#!/bin/sh

while true; do
   xsetroot -name "$( date +"%d/%m/%Y %H:%M:%S" )"
   sleep 30s
done &

picom -b --no-fading-openclose --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil
feh --no-fehbg --recursive --bg-fill --randomize ~/.wallpapers/* &

exec dwm_run
