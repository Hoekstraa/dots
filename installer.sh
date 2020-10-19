#!/bin/sh

# Makes sure script can be called from anywhere.
BASEDIR="$(cd "$(dirname "$0")" && pwd)"

ln -sfT $BASEDIR/bash/bashrc $HOME/.bashrc
ln -sfT $BASEDIR/readline/inputrc $HOME/.inputrc

ln -sfT $BASEDIR/vim/vimrc $HOME/.vimrc
mkdir -vp $HOME/.vim/
ln -sfT $BASEDIR/vim/colors $HOME/.vim/colors

mkdir -vp $HOME/.config
ln -sfT $BASEDIR/nvim $HOME/.config/nvim


ln -sfT $BASEDIR/scripts $HOME/scripts
