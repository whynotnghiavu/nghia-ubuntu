#!/bin/bash

DIRECTORY=~/Downloads/Nghia/Git/company20206205
REPO_DIR=nghia-wifi-proxy

if [ -d "$DIRECTORY" ]; then
  cd "$DIRECTORY"
  if [ -d "$REPO_DIR" ]; then
    echo "$REPO_DIR already exists."
  else
    # SSH
    git clone git@github.com:company20206205/nghia-wifi-proxy.git
  fi
else
  echo "$DIRECTORY does not exist."
fi
