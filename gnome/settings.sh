if ! command -v gsettings &> /dev/null
then
	echo "gsettings not available, not setting Gnome config"
	exit
fi	

# gsettings list-schemas
# gsettings list-keys <schema>
# gsettings set <schema> <option> <value>
# Or use dconf editor GUI tool

gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.interface enable-animations false
