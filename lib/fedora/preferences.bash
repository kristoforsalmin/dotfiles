#!/usr/bin/env bash

# General
# ----------------------------------------------------------------------

# Improve fonts rendering
# Run `xrdb -query` to view default settings.
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting 'slight'
gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing 'rgba'

echo 'Xft.lcdfilter: lcddefault' > ~/.Xresources

# Add minimize button to the titlebar
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,close'

# Settings
# ----------------------------------------------------------------------

# 1. Privacy

# Disable recent items
gsettings set org.gnome.desktop.privacy remember-recent-files false

# 2. Search

# Disable external search
gsettings set org.gnome.desktop.search-providers disable-external true

# 3. Date & Time

# Enable automatic time zone detection
gsettings set org.gnome.desktop.datetime automatic-timezone true

# Terminal
# ----------------------------------------------------------------------

# Disable cursor blinking in Terminal
gsettings set org.gnome.desktop.interface cursor-blink false

# Nautilus
# ----------------------------------------------------------------------

# Enable list view in all windows by default
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

# Set default zoom level
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'

# Enable tree view mode
gsettings set org.gnome.nautilus.list-view use-tree-view true
