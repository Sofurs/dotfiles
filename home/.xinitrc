#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

export XDG_DATA_HOME="${XDG_DATA_HOME:="$HOME/.local/share"}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:="$HOME/.cache"}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:="$HOME/.config"}"
export QT_QPA_PLATFORMTHEME=qt5ct   
export _JAVA_AWT_WM_NONREPARENTING=1

picom -b
feh --no-fehbg --recursive --bg-fill --randomize ~/.wallpapers/* &
betterlockscreen --fx dimblur --blur 0.4 --dim 40 -u ~/.wallpapers &
dwmblocks &
nm-applet &

exec dwm_run
