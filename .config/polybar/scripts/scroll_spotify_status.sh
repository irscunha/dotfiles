#!/bin/bash

zscroll -l 28 \
        --delay 0.1 \
        --match-command "playerctl -a status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$(echo $HOME/.config/polybar/scripts/spotify_status.sh)" &

wait