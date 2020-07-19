#!/bin/bash

options=$' Lock\n Logout\n Reboot\n Poweroff'

chosen="$(echo "$options" | rofi -lines 4 -columns 1 -width 15 -font: "UbuntuMono Nerd Font 20" -dmenu -p 'Powermenu')"

case $chosen in
	*) i3lock-fancy;;
	*) session-logout >/dev/null 2>&1 || pkill -15 -t tty"$XDG_VTNR" Xorg ;;
	*) systemctl reboot;;
	*) systemctl -i poweroff;;
esac
