#!/usr/bin/env bash

# Ask for the administrator password upfront
# See: https://gist.github.com/cowboy/3118588
ask_sudo() {
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

ask_confirmation() {
	print_warning "$@"
	read -p 'Continue? (y/n)' -n 1
	printf "\n"
}

is_confirmed() {
	if [[ "$REPLY" =~ ^[Yy]$ ]]; then
		return 0
	fi
	return 1
}

print_success() {
	printf "$(tput setaf 64)✓ %s$(tput sgr0)\n" "$@"
}

print_error() {
	printf "$(tput setaf 1)x %s$(tput sgr0)\n" "$@"
}

print_warning() {
	printf "$(tput setaf 136)! %s$(tput sgr0)\n" "$@"
}
