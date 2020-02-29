# Archlabs + Bspwm Dotfiles

## Useful configurations
  * [Wallpaper](https://imgur.com/gallery/rM2fRya)
  * Background color: #11141B
  
##   

## Screenshots 
![](https://i.imgur.com/UBr8Gz3.png)
![](https://i.imgur.com/JBOkRKk.png)
![](https://i.imgur.com/1zF6Jop.png)
![](https://i.imgur.com/txQxxzR.png)

## Ansible playbook

### What is?
Ansible is a infrastructure-as-code tool that's used to set and config remote hosts. It can also be used for automating tasks in local or remote.

### What the playbook does?
  * Copy the default config files (bspwm, vim, polybar, rofi, Xresources, xprofile)
  * Install [yay](https://github.com/Jguer/yay)
  * Install and set [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
  * Install and set [pywal](https://github.com/dylanaraps/pywal)
  * Install and set [polybar](https://github.com/polybar/polybar)
  * Install and set [rofi](https://github.com/davatorium/rofi)
  * Install VisualStudioCode (code editor)
  * Install Spotify (music player)
  * Install Flameshot (screenshot tool)
  * Install telegram-desktop (messager tool)
  * Install zip and unzip (.zip compress and decompress tools)

### Requirements asked by the playbook
  * The absolute path of wallpaper image (for pywal to use)
  * The background color (also for pywal)

### How to use?
  Install ansible
  
  `$ pip install ansible`
  
  Download playbook
  
  `$ curl https://raw.githubusercontent.com/innng/dotfiles/master/setup.yml >> setup.yml`
  
  Run playbook
  
  `$ ansible-playbook setup.yml -K`
  
  Or run the playbook step-by-step if you want to choose what gets modificated
  
  `$ ansible-playbook setup.yml -K --step`
  
  **Note:** `-K` parameter is for sudo password
    
#### Disclaimer
This playbook was meant for personal use and was only tested on archlabs and bspwm. The author is not responsible for any problems that can occur using thiplaybook
