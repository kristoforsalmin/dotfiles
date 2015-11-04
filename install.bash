#!/usr/bin/env bash

OS_NAME="$(uname -s)"

cd "$(dirname $BASH_SOURCE)"

source ./lib/utils.bash

# Ask for the administrator password upfront
ask_sudo

# Copy dotfiles
ask_confirmation 'Do you want to copy the dotfiles?'

if is_confirmed; then
	rsync -avh --no-perms --exclude-from=./.rsyncignore . ~
	print_success 'Dotfiles have been copied!'
fi

# Set preferences
ask_confirmation 'Do you want to set the OS preferences?'

if is_confirmed; then
	if [[ "$OS_NAME" == "Darwin" ]]; then
		bash ./lib/osx/preferences.bash
	elif [[ "$OS_NAME" == "Linux" ]]; then
		bash ./lib/fedora/preferences.bash
	fi

	print_success 'OS preferences have been set! You may need to restart.'
fi
