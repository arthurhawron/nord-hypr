#!/bin/sh
wallpaper=$(find ~/Pictures/Wallpapers/Random -type f | shuf -n 1)
swww img $wallpaper --transition-type center  --transition-fps 120 &
