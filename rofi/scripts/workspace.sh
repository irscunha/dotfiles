#!/bin/bash

options=$'1\n2\n3\n4\n5\n6\n7\n8'

chosen="$(echo "$options" | rofi -dmenu)"

case $chosen in
	1) i3-msg workspace 1;;
	2) i3-msg workspace 2;;
	3) i3-msg workspace 3;;
	4) i3-msg workspace 4;;
	5) i3-msg workspace 5;;
	6) i3-msg workspace 6;;
	7) i3-msg workspace 7;;
	8) i3-msg workspace 8;;
esac
