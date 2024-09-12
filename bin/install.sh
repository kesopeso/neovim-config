#!/usr/bin/env bash

# install dependencies
echo "Installing packages..."
sudo apt-get update
sudo apt-get install -y xclip ripgrep fd-find unzip gcc g++

# install fonts
echo "Installing fonts..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FONTS_FILE="${DIR}/../fonts/RobotoMono.zip"

unzip -fo ${FONTS_FILE} ~/.local/share/fonts
fc-cache -fv

# install packer plugin manager
echo "Installing plugin manager - Packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Everything installed. Open neovim with this folder as root, open packer.lua file. Source it and run :PackerSync command. That's all folks."
