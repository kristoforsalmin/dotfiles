#!/usr/bin/env zsh

cd "$0:A:h"

rsync \
  -a \
  -v \
  --no-perms \
  ../home/ ~
