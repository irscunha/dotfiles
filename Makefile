.PHONY: backup
backup:
	cp -r /home/${username}/.config/bspwm/ . 
	cp -r /home/${username}/.config/polybar/ .
	cp -r /home/${username}/.config/rofi/ .
	cp -r /home/${username}/.config/sxhkd/ .
	cp /home/${username}/.xprofile X/
	cp /home/${username}/.Xresources X/
