#!/bin/bash
# Disperse these configs to the filesystem, hopefully in the right places!

read -p "Change your name and email in .gitconfig.windows, then press any key"

cp .bashrc.windows ~/.bashrc
cp .mingw.aliases ~
cp .gitconfig.windows ~/.gitconfig
cp "vscode/vscode-keybindings.json" ~/"AppData/Roaming/Code/User/keybindings.json"
cp "vscode/vscode-settings.json" ~/"AppData/Roaming/Code/User/settings.json"