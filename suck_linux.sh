#!/bin/bash
# Suck all config from the filesystem to this project.
# Commit any working changes first!

cp ~/.bashrc.woz .
cp ~/.bash.aliases .
cp ~/.bash.aliases.xub .
cp ~/.gitconfig .
cp ~/.config/Code/User/keybindings.json vscode/vscode-keybindings.json
cp ~/.config/Code/User/settings.json vscode/vscode-settings.json
