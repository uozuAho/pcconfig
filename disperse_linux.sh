#!/bin/bash
# Disperse these configs to the filesystem, hopefully in the right places!

read -p "Change your name and email in .gitconfig.linux, then press any key"

# cp .bashrc.linux ~/.bashrc
cp .gitconfig.linux ~/.gitconfig
cp vscode/vscode-keybindings.json ~/.config/Code/User/keybindings.json
# cp vscode/vscode-settings.json ~/.config/Code/User/settings.json
