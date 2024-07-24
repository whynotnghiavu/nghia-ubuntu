#!/bin/bash

wget https://update.code.visualstudio.com/1.91.1/linux-deb-x64/stable -O vscode_1.91.1_amd64.deb

sudo dpkg -i vscode_1.91.1_amd64.deb

code --version
