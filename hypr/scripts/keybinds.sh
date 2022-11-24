#!/bin/bash
sed -n '/START_KEYS/,/END_KEYS/p' ~/.config/hypr/hyprland.conf |\
	grep -vE '# START_KEYS|# END_KEYS' |\
	yad --text-info --back=#303446 --fore=#C6D0F5 --geometry=1200x800



