# dots
My (new) dotfiles

## Software required:

* GNU Stow
* nvim
    * Vim-plug
    * Fura Code Regular Nerd Font Complete Mono
* Conky
    * Fira fonts
    * Raleway fonts
* i3wm
    * Compton
* Openbox
    * 1977 Openbox
* Neofetch
    * w3m

And of course the programs the dotfiles are meant for.



## How to use

This repo is compatible with GNU Stow, so to install the dotfiles you just need to clone this repo to your homefolder and run `stow <program>` inside it.

Install Vim-plug with 
``curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim``

run the following command in nvim: `:PlugInstall`
