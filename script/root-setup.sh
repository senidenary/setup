#!/bin/bash

# Always a good idea
apt update
apt upgrade -y

# Packages
	# Utilities
	packages="vim zsh fd-find gnome-font-viewer"

	# Dev stuff
	packages+=" git build-essential python3 libgtk-3-dev"

	# Multimedia
	packages+=" vlc lollypop gimp inkscape minidlna"

	# Gaming
	packages+=" steam"

	# Internet
	packages+=" deluge"

	# Security
	packages+=" password-gorilla"

	# Install 'em all
	apt install $packages -y

# Stuff that would be annoying to do in a script
echo ""
echo "Manual steps"
echo "    - Install LiterationMono Nerd Font and set as terminal font"
echo "    - Add a recent nnn to ~/bin (https://github.com/jarun/nnn)"
echo "    - Add a recent fzf to ~/bin (https://github.com/junegunn/fzf)"
echo "    - Add a recent gitui to ~/bin (https://github.com/gitui-org/gitui)"
echo "    - Install Vivaldi (https://vivaldi.com)"
echo "    - Install Veracrypt (https://veracrypt.io/en/Downloads.html)"
echo "    - Consider installing a recent .NET runtime (https://learn.microsoft.com/en-gb/dotnet/core/install/linux-debian)"
echo "    - If still using a Corsair mouse, install ckb-next (and change the CapsLock mapping to Shift)

