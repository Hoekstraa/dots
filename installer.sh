#!/bin/sh

# Makes sure script can be called from anywhere.
BASEDIR="$(cd "$(dirname "$0")" && pwd)"

ln -sf $BASEDIR/bash/bashrc $HOME/.bashrc
ln -sf $BASEDIR/readline/inputrc $HOME/.inputrc

ln -sf $BASEDIR/vim/vimrc $HOME/.vimrc
mkdir -vp $HOME/.vim/
ln -sf $BASEDIR/vim/colors $HOME/.vim/colors

mkdir -vp $HOME/.config
ln -sf $BASEDIR/nvim $HOME/.config/nvim


ln -sf $BASEDIR/scripts $HOME/scripts
