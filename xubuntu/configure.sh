#!/bin/bash
#
# Configure a newly installed xubuntu system
#
# To install xubuntu:
# - download latest xubuntu minimal
# - write to usb:
#   sudo dd bs=4M if=Downloads/xubuntu... of=/dev/sdb conv=fdatasync status=progress
# - check the write worked
# - reboot & install

set -e

# BEFORE YOU START
# Ensure these are up to date:
MEGA_DEB=https://mega.nz/linux/repo/xUbuntu_23.10/amd64/megasync-xUbuntu_23.10_amd64.deb
VSCODE_DEB=https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
GIT_EMAIL=me@me.com

# ----------------------------------------------
# OK go
# install mega + vscode
mkdir -p config_temp
pushd config_temp
wget $MEGA_DEB
wget $VSCODE_DEB
# todo: need to fix the output of wget
sudo dpkg -i megasync-xUbuntu_23.10_amd64.deb
sudo dpkg -i code...?

# git
sudo apt install -y git keepass2
ssh-keygen -t ed25519 -C "$GIT_EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo 
cat ~/.ssh/id_ed25519.pub
echo
read -p "Copy paste the above key to github -> profile icon -> settings -> ssh keys, then press any key"
popd

# my pcconfig
git clone git@github.com:uozuAho/pcconfig.git
pushd pcconfig
read -p "Open vs code, close it, then press a key..."
./disperse_linux.sh

# remap capslock to ctrl
# todo: confirm this works first!!
cp /etc/default/keyboard cat /etc/default/keyboard.bak
# sudo cat /etc/default/keyboard \
#     | sed s/XKBOPTIONS=""/XKBOPTIONS="ctrl:nocaps"/
#     > /etc/default/keyboard
# echo "capslock remapped to ctrl, needs a restart"