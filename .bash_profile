#!/usr/bin/env bash

setup_profile() {
  local files=(
    '.bash_options'
    '.bash_prompt'
    '.bash_profile.local'
  )

  for file in "${files[@]}"; do
    local path="$HOME/$file"

    [ -r "$path" ] && source "$path"
  done
}

setup_profile

unset -f setup_profile
