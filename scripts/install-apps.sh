#!/usr/bin/env zsh

cd "$0:A:h"

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install dependencies
brew tap homebrew/bundle
brew bundle --file=../home/Brewfile

# Install global Node.js modules
npm install -g \
  http-server \
  imagemin-cli \
  npm-check-updates \
  svgo

# Install Atom extensions
apm install \
  editorconfig \
  linter \
  linter-eslint \
  linter-stylelint \
  linter-ui-plus \
  sort-lines
