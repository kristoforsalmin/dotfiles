#!/usr/bin/env zsh

source "$HOMEBREW_PREFIX/share/antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme nicoulaj

antigen apply
