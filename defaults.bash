#!/usr/bin/env bash

# Disable reopening windows when logging back in
defaults write com.apple.loginwindow TALLogoutSavesState -int 0

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Settings
# ----------------------------------------------------------------------

# 1. General

# Show scroll bars: "Always"
defaults write NSGlobalDomain AppleShowScrollBars -string 'Always'

# Close windows when quitting an app
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# 2. Desktop & Screen Saver

# Start after: "10 Minutes"
defaults -currentHost write com.apple.screensaver idleTime -int 600

# 3. Dock

# Set the icon size of Dock items to 48 pixels
defaults write com.apple.dock tilesize -int 48

# Minimize windows using: "Scale effect"
defaults write com.apple.dock mineffect 'scale'

# Minimize windows into apllication icon
defaults write com.apple.dock minimize-to-application -bool true

# 4. Mission Control

# Dashboard: "As Overlay"
defaults write com.apple.dashboard dashboard-enabled-state -int 3

# 5. Language & Region

# Preferred languages: "English (U.S.)", "Русский"
defaults write NSGlobalDomain AppleLanguages -array 'en-US' 'ru-US'

# First day of week: "Monday"
defaults write NSGlobalDomain AppleFirstWeekday -dict-add 'gregorian' -int 2

# Time format: "24-Hour Time"
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true

# Temperature: "°C — Celsius"
defaults write NSGlobalDomain AppleTemperatureUnit -string 'Celsius'

# Measurement units: "Metric"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# 6. Security & Privacy

# Reqire password "immediately" after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# 7. Energy Saver

# Computer sleep: "Never"
sudo systemsetup -setcomputersleep Off > /dev/null

# 8. Keyboard

# Use all F1, F2, etc. keys as standard function keys
defaults write NSGlobalDomain com.apple.keyboard.fnState -int 1

# Full Keyboard Access: In windows and dialogs, press Tab to move keyboard focus between: "All controls"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# 9. Mouse

# Disable natural scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# 10. Trackpad

# Secondary click "Click in bottom right corner"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Tap to click "Tap with one finger"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Finder
# ----------------------------------------------------------------------

# Disable showing these items on the desktop: "External disks", "CDs, DVDs, and iPods"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# New Finder windows show: "Desktop"
defaults write com.apple.finder NewWindowTarget -string 'PfDe'
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Desktop"

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search: "Search the Current Folder"
defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'

# Enable list view in all windows by default
defaults write com.apple.finder FXPreferredViewStyle -string 'Nlsv'

# Sort by: "Snap to Grid"
/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:arrangeBy grid' ~/Library/Preferences/com.apple.finder.plist

# Grab
# ----------------------------------------------------------------------

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Save screenshots in PNG format
defaults write com.apple.screencapture type -string 'png'

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Mail
# ----------------------------------------------------------------------

# Message font: "Helvetica 14"
defaults write com.apple.mail NSFontSize -int 14

# List Preview: "1 Line"
defaults write com.apple.mail NumberOfSnippetLines -int 1

# Disable loading remote content in messages
defaults write com.apple.mail DisableURLLoading -bool true

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Photos
# ----------------------------------------------------------------------

# Disable opening Photos automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Safari
# ----------------------------------------------------------------------

# New windows and new tabs open with: "Homepage"
defaults write com.apple.Safari NewWindowBehavior -int 0

# New tabs open with: "Homepage"
defaults write com.apple.Safari NewTabBehavior -int 0

# Homepage: "about:blank"
defaults write com.apple.Safari HomePage -string 'about:blank'

# Remove history items: "After one week"
defaults write com.apple.Safari HistoryAgeInDaysLimit -int 7

# Disable opening "safe" files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Disable AutoFill web forms
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Disable internet plug-ins
defaults write com.apple.Safari WebKitPluginsEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false

# Website tracking: "Ask websites not to track me"
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Smart Search Field: "Show full website address"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Show Favorites Bar
defaults write com.apple.Safari ShowFavoritesBar-v2 -bool true

# Show Develop menu in menu bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Spotlight
# ----------------------------------------------------------------------

# Disable search results
defaults write com.apple.spotlight orderedItems -array \
  '{"enabled" = 0;"name" = "APPLICATIONS";}' \
  '{"enabled" = 0;"name" = "BOOKMARKS";}' \
  '{"enabled" = 0;"name" = "CONTACT";}' \
  '{"enabled" = 0;"name" = "DIRECTORIES";}' \
  '{"enabled" = 0;"name" = "DOCUMENTS";}' \
  '{"enabled" = 0;"name" = "EVENT_TODO";}' \
  '{"enabled" = 0;"name" = "FONTS";}' \
  '{"enabled" = 0;"name" = "IMAGES";}' \
  '{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
  '{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
  '{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
  '{"enabled" = 0;"name" = "MENU_OTHER";}' \
  '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}' \
  '{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
  '{"enabled" = 0;"name" = "MESSAGES";}' \
  '{"enabled" = 0;"name" = "MOVIES";}' \
  '{"enabled" = 0;"name" = "MUSIC";}' \
  '{"enabled" = 0;"name" = "PDF";}' \
  '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
  '{"enabled" = 0;"name" = "SOURCE";}' \
  '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
  '{"enabled" = 0;"name" = "SYSTEM_PREFS";}'

# Terminal
# ----------------------------------------------------------------------

# Encodings: "Unicode (UTF-8)"
defaults write com.apple.terminal StringEncodings -array 4

# Enable Secure Keyboard Entry
defaults write com.apple.terminal SecureKeyboardEntry -bool true

# Hide marks
defaults write com.apple.Terminal ShowLineMarks -int 0

# Time Machine
# ----------------------------------------------------------------------

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal
