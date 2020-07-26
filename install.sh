#! /bin/zsh

WALLPAPER_PATH=$1
DOTFILES_REPO="git@github.com:innng/dotfiles.git"
GIT_DIR="$HOME/.dotfiles"

########## INSTALLATION ##########

# update system
sudo pacman -Syyu

# install pip
cd /tmp
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

# install yay
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sicf --noconfirm --needed

# install oh-my-zsh
cd /tmp
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install starship prompt
curl -fsSL https://starship.rs/install.sh | zsh

# install apps
yay -S polybar python-dbus rofi code spotify flameshot telegram-desktop playerctl wpgtk-git lxappearance --noconfirm --needed


# install powerline fonts
cd /tmp
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh

########## CONFIGURATION ##########

# setup dotifles config with git bare
cd $HOME
git clone --bare $DOTFILES_REPO $GIT_DIR
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no

# pull config files from remote
dotfiles pull

# set vim as core editor for git
git config --global core.editor "vim"

# apply wpgtk theme
wpgtk -r

# make available GTK theme using wpgtk
mkdir -p $HOME/.themes
ln -s $HOME/.local/share/themes/FlatColor $HOME/.themes
