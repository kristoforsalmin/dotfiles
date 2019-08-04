#!/usr/bin/env bash

setup_profile() {
  local paths=(
    "$HOME/.bash_aliases"
    "$HOME/.bash_exports"
    "$HOME/.bash_functions"
    "$HOME/.bash_prompt"
    "$HOME/.bash_profile.local"
  )

  for path in "${paths[@]}"; do
    [ -r "$path" ] && source "$path"
  done
}

setup_profile

unset -f setup_profile
