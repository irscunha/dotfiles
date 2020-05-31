#!/bin/bash

wallpaper_filename=$1
background_color=$2
dotfiles_folder=~/Projects/dotfiles

##### INSTALLATION #####

cd /tmp

# upgrade arch
sudo pacman -Syyu

# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sicf --noconfirm --needed

cd /tmp

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install starship prompt on top of oh-my-zsh
curl -fsSL https://starship.rs/install.sh | bash

# install polybar python-dbus rofi code spotify flameshot telegram-desktop zip unzip
yay -S polybar python-dbus rofi code spotify flameshot telegram-desktop zip unzip --noconfirm --needed

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh

cd /tmp

# install pywal
pip install pywal

##### CONFIGURATION #####

cd ~

# apply theme with pywal
wal -i ~/Pictures/$wallpaper_filename -b $background_color

# create Projects folder
mkdir -p Projects

# clone dotfiles repository
cd Projects
git clone https://github.com/innng/dotfiles.git
cd dotfiles

# copy xorg configuration files
sudo mv /etc/X11/xorg.conf.d/10-keyboard.conf /etc/X11/xorg.conf.d/10-keyboard.conf.old
sudo cp $dotfiles_folder/xorg/10-keyboard.conf /etc/X11/xorg.conf.d

# copy configuration files stored in home
files=$(ls dots)
for file in $files; do
    mv ~/.$file ~/.$file.old
    cp ~/Projects/dotfiles/dots/$file ~/.$file
done

# copy starship configuration
mkdir -p ~/.config/starship
mv ~/.config/starship/starship.toml ~/.config/starship/starship.toml.old
cp ~/Projects/dotfiles/starship/starship.toml ~/.config/starship

# copy rofi configuration
mkdir -p ~/.config/rofi
mv ~/.config/rofi/config.rasi ~/.config/rofi/config.rasi.old
cp ~/Projects/dotfiles/rofi/config.rasi ~/.config/rofi

# copy bspwm configuration file
mv ~/.config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc.old
cp ~/Projects/dotfiles/bspwm/bspwmrc ~/.config/bspwm

# copy sxhkd configuration file
mv ~/.config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc.old
cp ~/Projects/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd

# copy terminator configuration
mkdir -p ~/.config/terminator
mv ~/.config/terminator/config ~/.config/terminator/config.old
cp ~/Projects/dotfiles/terminator/config ~/.config/terminator

# copy polybar configuration files
mkdir -p ~/.config/polybar
mv ~/.config/polybar ~/.config/polybar.old
cp -r ~/Projects/dotfiles/polybar ~/.config/polybar

# set git default editor
git config --global core.editor "vim"
