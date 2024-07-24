#!/bin/bash

sudo apt update

pip3 install --upgrade gnome-extensions-cli

gnome-extensions-cli --version

#

gnome-extensions-cli install dash-to-panel@jderose9.github.com
gnome-extensions enable dash-to-panel@jderose9.github.com

#

# dconf write /org/gnome/shell/extensions/dash-to-panel/group-apps true
dconf write /org/gnome/shell/extensions/dash-to-panel/group-apps false
