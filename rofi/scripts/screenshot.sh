#!/bin/bash

rofi_theme="$HOME/.config/rofi/themes/no_input.rasi"
options=$'\n\n\n'

chosen="$(echo "$options" | rofi -dmenu -p ' powermenu' -theme $rofi_theme -columns 4 -lines 1 -font "Ubuntu Mono 25")"

case $chosen in
    '') flameshot screen -c;;
    '') flameshot screen -p ~/Pictures;;
    '') flameshot full -p ~/Pictures;;
    '') flameshot gui;;
esac
