#!/usr/bin/env bash

cd "$(dirname $BASH_SOURCE)" && source ./lib/utils.bash

# Ask for the administrator password upfront
ask_sudo

# Copy dotfiles
ask_confirmation 'Do you want to copy the dotfiles?'

if is_confirmed; then
	rsync -avh --no-perms --exclude-from=./.rsyncignore . ~
	print_success 'Dotfiles have been copied!'
fi

# Set macOS preferences
ask_confirmation 'Do you want to set macOS preferences?'

if is_confirmed; then
	bash ./lib/preferences.bash
	print_success 'macOS preferences have been set! You may need to restart.'
fi
