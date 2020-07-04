#! /bin/zsh

DOTFILES_REPO="git@github.com:innng/dotfiles.git"
GIT_DIR="$HOME/.dotfiles"

# setup dotifles config with git bare
git clone --bare $DOTFILES_REPO $GIT_DIR
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no

# pull config files from remote
dotfiles pull

# set vim as core editor for git
git config --global core.editor "vim"
