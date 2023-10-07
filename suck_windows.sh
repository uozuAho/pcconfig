#!/bin/bash
# Suck all config from the filesystem to this project.
# Commit any working changes first!

cp ~/.bashrc .bashrc.woz
cp ~/.bash.aliases .
cp ~/.bash.aliases.windows .
cp ~/.gitconfig .
cp ~/.music_youtubes .
cp ~/"AppData/Roaming/Code/User/keybindings.json" "vscode/vscode-keybindings.json"
cp ~/"AppData/Roaming/Code/User/settings.json" "vscode/vscode-settings.json"
