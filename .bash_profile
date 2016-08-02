#!/usr/bin/env bash

setup_profile() {
	local files=(
		'.bash_aliases'
		'.bash_exports'
		'.bash_options'
		'.bash_prompt'
		'.bash_profile.local'
	)

	for file in "${files[@]}"; do
		[ -r "$file" ] && source "$file"
	done
}

setup_profile

unset -f setup_profile
