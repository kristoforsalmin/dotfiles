#!/usr/bin/env bash

# Start an HTTP server from a directory
serve() {
  ruby -run -e httpd "$1" -p 8080
}
