#!/bin/bash

# sudo add-apt-repository ppa:hluk/copyq
# sudo -E add-apt-repository ppa:hluk/copyq

sudo apt update

sudo apt install copyq -y

rm ~/.config/copyq/copyq-commands.ini

copyq --version
