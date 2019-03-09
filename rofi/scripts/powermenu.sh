#!/bin/bash

rofi_theme="$HOME/.config/rofi/themes/no_input.rasi"
# options=$' lock\n log off\n reboot\n power off'
options=$'\n\n\n'

chosen="$(echo "$options" | rofi -dmenu -p ' powermenu' -theme $rofi_theme -columns 4 -lines 1 -font "Ubuntu Mono 25")"

case $chosen in
    '') i3exit lock;;
    '') i3exit logout;;
    '') i3exit reboot;;
    '') i3exit shutdown;;
esac
