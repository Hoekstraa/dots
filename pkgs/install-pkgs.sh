#!/bin/sh
# Expected to be ran by the installer. Paths will be wrong if ran directly.

. /etc/os-release

case $ID in
  arch) echo "This is Arch Linux! Installing packages..."
      xargs -a ./pkgs/arch-pkgs.txt sudo pacman --needed -Sy
    ;;

  *) echo "Unknown distro, skipping package install."
      ;;
esac

