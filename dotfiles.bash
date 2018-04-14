#!/usr/bin/env bash

cd "$(dirname $BASH_SOURCE)"

rsync \
  -a \
  -v \
  --no-perms \
  --exclude-from=.rsyncignore \
  . ~
