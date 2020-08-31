#!/usr/bin/env bash


rofi_command="rofi -theme themes/spotify.rasi"

# Gets the current status of spotify (for us to parse it later on)
status="$(playerctl -p spotify status)"
# Defines the Play / Pause option content
if [[ $status == "Playing" ]]; then
    play_pause=""
else
    play_pause=""
fi

next=""
previous=""

# Variable passed to rofi
options="$previous\n$play_pause\n$next"

# Get the current playing song
current=$(playerctl -p spotify metadata --format '{{ xesam:artist }} - {{ xesam:title }}')
if [[ -z "$current" ]]; then
    current="Spotify not connected"
fi

chosen="$(echo -e "$options" | $rofi_command -p "$current" -dmenu $active $urgent -selected-row 1)"
case $chosen in
    $previous)
        playerctl -p spotify previous
        ;;
    $play_pause)
        playerctl -p spotify play-pause
        ;;
    $next)
        playerctl -p spotify next
        ;;
esac
