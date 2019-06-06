#!/bin/bash

read -p "Change your name and email in .gitconfig.windows, then press any key"

cp .bashrc.windows ~/.bashrc
cp .mingw.aliases ~
cp .gitconfig.windows ~/.gitconfig
cp "sublime_text/Default (Windows).sublime-keymap" ~/"AppData/Roaming/Sublime Text 3/Packages/User/"
cp "sublime_text/Preferences.sublime-settings" ~/"AppData/Roaming/Sublime Text 3/Packages/User/"
cp "vscode/vscode-keybindings.json" ~/"AppData/Roaming/Code/User/keybindings.json"
cp "vscode/vscode-settings.json" ~/"AppData/Roaming/Code/User/settings.json"