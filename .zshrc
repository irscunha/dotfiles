export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH

##### OH-MY-ZSH THINGS #####

export ZSH="/home/ing/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

##### USER CONFIGURATION #####

source $HOME/.aliases

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# set wpgtk colorscheme
(cat $HOME/.config/wpg/sequences &)
