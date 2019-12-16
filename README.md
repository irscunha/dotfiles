# Archlabs + Bspwm Dotfiles

## Useful configurations
  * [Wallpaper](https://imgur.com/gallery/rM2fRya)
  * Background color: #11141B

## How to use ansible playbook for automatic installation
  Install ansible
  
  `$ pip install ansible`
  
  Run playbook
  
  `$ ansible-playbook setup.yml -K`
  
  Or run the playbook step-by-step if you want to choose what gets modificated
  
  `$ ansible-playbook setup.yml -K --step`
  
  **Note:** `-K` parameter is for sudo password
  
### Disclaimer
This playbook was meant for personal use and was only tested on archlabs and bspwm. The author is not responsible for any problems that can occur using thiplaybook
