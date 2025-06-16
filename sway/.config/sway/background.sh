#!/bin/bash

WALLPAPER="${HOME}/hatsune_miku/kim-chan-il-2.jpg"
[ -f "$WALLPAPER" ] || WALLPAPER="/usr/share/backgrounds/sway/Sway_Wallpaper_Blue_1920x1080.png"

# Kill existing swaybg if needed
pkill swaybg

# Run swaybg in the background
swaybg -o eDP-1 -i "$WALLPAPER" -m fill &

