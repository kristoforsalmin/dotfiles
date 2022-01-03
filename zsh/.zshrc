#!/usr/bin/env zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme nicoulaj

antigen apply

source /opt/homebrew/opt/nvm/nvm.sh
