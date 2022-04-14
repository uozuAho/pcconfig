#!/bin/bash
# Disperse these configs to the filesystem, hopefully in the right places!

read -p "Change your name and email in .gitconfig.windows, then press any key"

cp .bashrc.woz ~/.bashrc
cp .bash.aliases ~
cp .music_youtubes ~
cp .bash.aliases.windows ~
cp .gitconfig ~
cp "vscode/vscode-keybindings.json" ~/"AppData/Roaming/Code/User/keybindings.json"
cp "vscode/vscode-settings.json" ~/"AppData/Roaming/Code/User/settings.json"
