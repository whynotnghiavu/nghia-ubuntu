#!/bin/bash

# Cài đặt wget nếu chưa có
sudo apt-get install wget -y

# Tải xuống tệp zip
wget https://github.com/company20206205/nghia-ubuntu/archive/refs/heads/main.zip

# Cài đặt unzip nếu chưa có
sudo apt-get install unzip -y

# Giải nén file
unzip main.zip

# Chuyển vào thư mục
cd nghia-ubuntu-main/contents

# # # # # # # # # #
# Khi phát triển
# # # # # # # # # #
# ./install

# # # # # # # # # #
# Khi sử dụng
# # # # # # # # # #

# Cài đặt pip nếu chưa có
sudo apt-get install python3-pip -y

# Cài đặt Dotbot
pip3 install dotbot

# Chạy Dotbot với file cấu hình
dotbot -c install.conf.yaml
