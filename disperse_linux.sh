#!/bin/bash
# Disperse these configs to the filesystem, hopefully in the right places!

read -p "Change your name and email in .gitconfig.linux, then press any key"

cp .bashrc.woz ~
cp .bash.aliases ~
cp .bash.aliases.xub ~
cp .gitconfig ~
cp .music_youtubes ~
cp vscode/vscode-keybindings.json ~/.config/Code/User/keybindings.json
cp vscode/vscode-settings.json ~/.config/Code/User/settings.json