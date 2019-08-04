#!/usr/bin/env bash

cd "$(dirname $BASH_SOURCE)"

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install dependencies
brew tap homebrew/bundle
brew bundle --file=../home/Brewfile
