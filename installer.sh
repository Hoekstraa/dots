#!/bin/sh

# Makes sure script can be called from anywhere.
BASEDIR="$(cd "$(dirname "$0")" && pwd)"
PLATFORM="$(uname | tr '[:upper:]' '[:lower:]')"

link() {
    # ln -sfT replacement in case of Mac OS
    case $PLATFORM in
        linux*)
            ln -sfT "$1" "$2"
            ;;
        darwin*)
            ln -sfh "$1" "$2"
            ;;
        *)
            ln -sfT "$1" "$2"
            ;;
    esac
}

link "$BASEDIR/bash/bashrc" "$HOME/.bashrc"
link "$BASEDIR/bash/bashrc" "$HOME/.bash_profile"
link "$BASEDIR/vim/" "$HOME/.vim"

mkdir -vp "$HOME/.config/"
link "$BASEDIR/tmux/" "$HOME/.config/tmux"
link "$BASEDIR/readline/" "$HOME/.config/readline"
link "$BASEDIR/mime/mimeapps.list" "$HOME/.config/mimeapps.list"
link "$BASEDIR/nvim" "$HOME/.config/nvim"
link "$BASEDIR/dunst" "$HOME/.config/dunst"
link "$BASEDIR/dwm" "$HOME/.config/dwm"
link "$BASEDIR/stumpwm" "$HOME/.config/stumpwm"
link "$BASEDIR/zathura" "$HOME/.config/zathura"
link "$BASEDIR/conky" "$HOME/.config/conky"
link "$BASEDIR/git" "$HOME/.config/git"
link "$BASEDIR/newsboat" "$HOME/.config/newsboat"
link "$BASEDIR/karabiner" "$HOME/.config/karabiner"
link "$BASEDIR/cmus/" "$HOME/.config/cmus"

link "$BASEDIR/ssh/config" "$HOME/.ssh/config"
link "$BASEDIR/ssh/config.d" "$HOME/.ssh/config.d"

mkdir -vp "$HOME/.gnupg/"
link "$BASEDIR/gpg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"

link "$BASEDIR/scripts" "$HOME/.scripts"

case $PLATFORM in
    darwin*)
        find "$BASEDIR/fonts/" -name "*.otf" -type f -exec cp {} ~/Library/Fonts \;
        find "$BASEDIR/fonts/" -name "*.ttf" -type f -exec cp {} ~/Library/Fonts \;
        ;;
    *)
        link "$BASEDIR/fonts" "$HOME/.fonts"
        ;;
esac

link "$BASEDIR/x11/xinitrc" "$HOME/.xinitrc"
link "$BASEDIR/x11/xserverrc" "$HOME/.xserverrc"

# For 24-bit color in CLI Emacs, a terminfo definition needs to exist
case $PLATFORM in
    darwin*)
        ;;
    *)
        tic -x -o ~/.terminfo "$BASEDIR/terminfo/xterm-24bits.terminfo"
        ;;
esac

./gnome/settings.sh
./pkgs/install-pkgs.sh
