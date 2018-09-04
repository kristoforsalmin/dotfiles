#!/usr/bin/env bash

cd "$(dirname $BASH_SOURCE)"

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install dependencies
brew tap homebrew/bundle
brew bundle

# Install Visual Studio Code extensions
code \
  --install-extension dbaeumer.vscode-eslint \
  --install-extension EditorConfig.EditorConfig \
  --install-extension ms-vscode.sublime-keybindings \
  --install-extension shinnn.stylelint
