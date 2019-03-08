#!/bin/bash

options=$'lock screen\nlog off\nreboot\npower off'
DIR="$(pwd)/`basename "$0"`"

chosen="$(echo "$options" | rofi -dmenu)"

case $chosen in
    'lock screen') i3exit lock;;
    'log off') i3exit logout;;
    'reboot') i3exit reboot;;
    'power off') i3exit shutdown;;
esac
