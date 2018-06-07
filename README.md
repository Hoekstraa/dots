# dots
My (new) dotfiles

## Software required:

* Vim-plug for nvim
* GNU Stow
* Fira fonts

## How to use

This repo is compatible with GNU Stow, so to install the dotfiles you just need to clone this repo to your homefolder and run `stow <program>` inside it.

Install Vim-plug with 
``curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim``

run the following command in nvim: `:PlugInstall`
