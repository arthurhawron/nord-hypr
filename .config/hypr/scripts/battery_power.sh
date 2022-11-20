#!/bin/sh
percentage=$(cat /sys/class/power_supply/BAT0/capacity)
state=$(cat /sys/class/power_supply/BAT0/status)

if [ $state == "Discharging" ]
then	
	brightnessctl s 10% &
	hyprctl keyword animations:enabled false &
else
	brightnessctl s 100% &
	hyprctl keyword animations:enabled true &
fi

	
	
