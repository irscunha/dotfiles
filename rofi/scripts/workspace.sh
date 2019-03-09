#!/bin/bash

rofi_theme="$HOME/.config/rofi/themes/theme.rasi"
options=$' 1\n 2\n 3\n 4\n 5\n 6\n 7\n 8'

chosen="$(echo "$options" | rofi -dmenu -p ' workspace' -theme $rofi_theme)"

case $chosen in
	' 1') i3-msg workspace 1;;
	' 2') i3-msg workspace 2;;
	' 3') i3-msg workspace 3;;
	' 4') i3-msg workspace 4;;
	' 5') i3-msg workspace 5;;
	' 6') i3-msg workspace 6;;
	' 7') i3-msg workspace 7;;
	' 8') i3-msg workspace 8;;
esac
