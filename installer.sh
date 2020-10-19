#!/bin/sh

# Makes sure script can be called from anywhere.
BASEDIR="$(cd "$(dirname "$0")" && pwd)"

ln -sfT $BASEDIR/bash/bashrc $HOME/.bashrc
ln -sfT $BASEDIR/readline/inputrc $HOME/.inputrc

ln -sfT $BASEDIR/vim/vimrc $HOME/.vimrc
mkdir -vp $HOME/.vim/
ln -sfT $BASEDIR/vim/colors $HOME/.vim/colors

mkdir -vp $HOME/.gnupg/
ln -sfT $BASEDIR/gpg/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf

mkdir -vp $HOME/.config
ln -sfT $BASEDIR/nvim $HOME/.config/nvim
ln -sfT $BASEDIR/dunst $HOME/.config/dunst
ln -sfT $BASEDIR/dwm $HOME/.config/dwm
ln -sfT $BASEDIR/zathura $HOME/.config/zathura


ln -sfT $BASEDIR/scripts $HOME/scripts
ln -sfT $BASEDIR/fonts $HOME/.fonts
