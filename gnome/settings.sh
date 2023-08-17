if ! command -v gsettings &> /dev/null
then
	echo "gsettings not available, not setting Gnome config"
	exit
fi	

# gsettings list-schemas
# gsettings list-keys <schema>
# gsettings set <schema> <option> <value>

gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
