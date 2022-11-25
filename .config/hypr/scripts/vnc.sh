#!/bin/bash
hyprctl output destroy HEADLESS-1 &
hyprctl output create headless &
wayvnc -o HEADLESS-1 &
