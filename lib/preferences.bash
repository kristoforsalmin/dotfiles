#!/usr/bin/env bash

# General
# ----------------------------------------------------------------------

# Disable reopening windows when logging back in
defaults write com.apple.loginwindow TALLogoutSavesState -int 0

# Settings
# ----------------------------------------------------------------------

# 1. General

# Show scroll bars "Always"
defaults write NSGlobalDomain AppleShowScrollBars -string 'Always'

# Close windows when quitting an app
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# 2. Desktop & Screen Saver

# Start after "10 Minutes"
sudo -u "$(whoami)" defaults -currentHost write com.apple.screensaver idleTime -int 600

# Reqire password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# 3. Dock

# Minimize windows using "Scale effect"
defaults write com.apple.dock mineffect 'scale'

# Minimize windows into apllication icon
defaults write com.apple.dock minimize-to-application -bool true

# 5. Energy Saver

# Computer sleep "Never"
sudo systemsetup -setcomputersleep Never

# 6. Keyboard

# Use all F1, F2, etc. keys as standard function keys
defaults write NSGlobalDomain com.apple.keyboard.fnState -int 1

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs).
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# 7. Mouse and Trackpad

# Disable natural scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Secondary click "Click in bottom right corner"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Tap to click "Tap with one finger"

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# 8. Date & Time

# Use a 24-hour clock
defaults write com.apple.menuextra.clock DateFormat -string 'H:mm'

# 9. Time Mashine

# Disable local backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

# 10. Accessibility

# Reduse transparency
defaults write com.apple.universalaccess reduceTransparency -bool true

# Terminal
# ----------------------------------------------------------------------

# Text encoding "Unicode (UTF-8)"
defaults write com.apple.terminal StringEncodings -array 4

# Finder
# ----------------------------------------------------------------------

# Disable showing these items on the desktop: "External disks",
# "CDs, DVDs, and iPods".
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# New Finder windows show "Desktop"
defaults write com.apple.finder NewWindowTarget -string 'PfDe'
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Desktop"

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable list view in all windows by default
defaults write com.apple.finder FXPreferredViewStyle -string 'Nlsv'

# When performing a search "Search the Current Folder" by default
defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'

# Sort by "Snap to Grid" for desktop
/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:arrangeBy grid' ~/Library/Preferences/com.apple.finder.plist

# Safari
# ----------------------------------------------------------------------

# New windows and new tabs open with "Homepage"
defaults write com.apple.Safari NewWindowBehavior -int 0
defaults write com.apple.Safari NewTabBehavior -int 0

# Homepage "about:blank"
defaults write com.apple.Safari HomePage -string 'about:blank'

# Remove history items "After one day"
defaults write com.apple.Safari HistoryAgeInDaysLimit -int 1

# Disable opening "safe" files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Disable AutoFill web forms
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Show Develop menu in menu bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Grab
# ----------------------------------------------------------------------

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string 'png'

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true