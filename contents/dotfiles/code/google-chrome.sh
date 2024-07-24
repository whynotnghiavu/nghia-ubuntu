#!/bin/bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

# # Trong trường hợp có lỗi phụ thuộc, chạy lệnh sau để sửa chữa:
#  sudo apt-get install -f

google-chrome --version
