#!/bin/sh

# Makes sure script can be called from anywhere.
BASEDIR="$(cd "$(dirname "$0")" && pwd)"

ln -sfT $BASEDIR/tmux/tmux.conf $HOME/.tmux.conf
ln -sfT $BASEDIR/bash/bashrc $HOME/.bashrc
ln -sfT $BASEDIR/readline/inputrc $HOME/.inputrc
ln -sfT $BASEDIR/vim/ $HOME/.vim

mkdir -vp $HOME/.config/cmus
ln -sfT $BASEDIR/cmus/rc $HOME/.config/cmus/rc

mkdir -vp $HOME/.gnupg/
ln -sfT $BASEDIR/gpg/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf

ln -sfT $BASEDIR/nvim $HOME/.config/nvim
ln -sfT $BASEDIR/dunst $HOME/.config/dunst
ln -sfT $BASEDIR/dwm $HOME/.config/dwm
ln -sfT $BASEDIR/zathura $HOME/.config/zathura
ln -sfT $BASEDIR/conky $HOME/.config/conky
ln -sfT $BASEDIR/git $HOME/.config/git

ln -sfT $BASEDIR/scripts $HOME/scripts
ln -sfT $BASEDIR/fonts $HOME/.fonts

ln -sfT $BASEDIR/x11/xinitrc $HOME/.xinitrc
mkdir -vp $HOME/.config/X11
ln -sfT $BASEDIR/x11/xserverrc $HOME/.config/X11/xserverrc
