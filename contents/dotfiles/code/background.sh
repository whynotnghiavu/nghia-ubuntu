#!/bin/bash

wallpaperPath="$DOTFILES/code/root/home/Desktop/background.jpeg"
echo "wallpaperPath = $wallpaperPath"

gsettings set org.gnome.desktop.background picture-uri-dark "file://${wallpaperPath}"
