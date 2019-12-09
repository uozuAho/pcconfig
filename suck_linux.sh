#!/bin/bash
# Suck all config from the filesystem to this project.
# Commit any working changes first!

cp ~/.bashrc .bashrc.linux
cp ~/.gitconfig .gitconfig.linux
cp ~/.config/Code/User/keybindings.json vscode/vscode-keybindings.json
cp ~/.config/Code/User/settings.json vscode/vscode-settings.json
