# Neovim config

## About

This is a neovim setup based on ThePrimeagen's setup. It might deviate a bit in time to suit my needs, but for now I just want to try out his setup and workflow.

## Dependencies
Check for the below packages on the system. If some of them are missing, install them first.

### Fonts
- RobotoMono NerdFonts

### Clipboard copy/paste
- xclip

### Telescope
- ripgrep
- fd-find

## Plugin manager

Plugin manager in use is Packer. If it is not installed, do the following:
- open lua/keso/packer.lua file with neovim
- source the file by running the command :so
- sync everything by running the command :PackerSync
