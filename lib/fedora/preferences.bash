#!/usr/bin/env bash

# General
# ----------------------------------------------------------------------

# Improve fonts rendering
# Run `xrdb -query` to view default settings.
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting 'slight'
gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing 'rgba'

echo 'Xft.lcdfilter: lcddefault' > ~/.Xresources

# Terminal
# ----------------------------------------------------------------------

# Disable cursor blinking in Terminal
gsettings set org.gnome.desktop.interface cursor-blink false