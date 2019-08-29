#!/usr/bin/env zsh

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install tools
brew install \
  antigen \
  git-lfs \
  mas \
  node \
  tree

# Install apps
brew cask install \
  adobe-acrobat-reader \
  atom \
  docker \
  firefox \
  forklift \
  google-chrome \
  iina \
  opera \
  skype \
  transmission \
  virtualbox

mas install \
  409183694 `# Keynote` \
  409201541 `# Pages` \
  409203825 `# Numbers`

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
