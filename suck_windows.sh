#!/bin/bash
# Suck all config from the filesystem to this project.
# Commit any working changes first!

cp ~/.bashrc .bashrc
cp ~/.bash.aliases .bash.aliases
cp ~/.gitconfig .gitconfig.windows
cp ~/"AppData/Roaming/Code/User/keybindings.json" "vscode/vscode-keybindings.json"
cp ~/"AppData/Roaming/Code/User/settings.json" "vscode/vscode-settings.json"
