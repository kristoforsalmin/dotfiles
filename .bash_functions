#!/usr/bin/env bash

# Start an HTTP server from a directory
serve() {
  local port='8080'

  open "http://localhost:$port/" & ruby -run -e httpd "$1" -p "$port"
}
