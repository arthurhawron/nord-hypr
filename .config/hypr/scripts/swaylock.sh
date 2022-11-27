#!/bin/sh
PICTURE=/tmp/swaylock.png
SCREENSHOT="grim $PICTURE"

BLUR="32x9"

$SCREENSHOT
convert $PICTURE -blur $BLUR $PICTURE
swaylock -i $PICTURE
swayidle -w \
	timeout 60 'hyprctl dispatch dpms off'\
	resume 'hyprctl dispatch dpms on'\
	before-sleep 'swaylock -f -c 000000'
killall swayidle
rm $PICTURE

