#! /bin/zsh

killall polybar
polybar -c $HOME/.config/polybar/config left-bar &
polybar -c $HOME/.config/polybar/config middle-bar &
polybar -c $HOME/.config/polybar/config right-bar &
polybar -c $HOME/.config/polybar/config support-bar &
