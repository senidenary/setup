#!/bin/bash

# Update default shell (requires restart to take effect)
chsh -s $(which zsh)

mkdir -p $HOME/.desktop $HOME/incoming $HOME/self $HOME/media/music $HOME/media/pictures $HOME/media/clips

xdg-user-dirs-update --set DESKTOP $HOME/.desktop
xdg-user-dirs-update --set DOWNLOAD $HOME/incoming
xdg-user-dirs-update --set DOCUMENTS $HOME/self
xdg-user-dirs-update --set MUSIC $HOME/media/music
xdg-user-dirs-update --set PICTURES $HOME/media/pictures
xdg-user-dirs-update --set VIDEOS $HOME/media/clips

mkdir $HOME/bin
ln -s /bin/fdfind $HOME/bin/fd

# Don't display "Desktop" in Nemo
gsettings set org.nemo.desktop show-desktop-icons false

# Remap Capslock to Esc
# This should probably check the output of `gsettings get org.gnome.libgnomekbd.keyboard options`,
# and only append this to that if it's not in there, but if I was going to do that I would rewrite
# this in python.
gsettings set org.gnome.libgnomekbd.keyboard options "['caps\tcaps:escape']"

