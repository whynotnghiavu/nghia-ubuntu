#!/bin/bash

# sudo add-apt-repository ppa:danielrichter2007/grub-customizer
# sudo -E add-apt-repository  ppa:danielrichter2007/grub-customizer

sudo apt-get update

sudo apt-get install grub-customizer -y

grub-customizer --version
