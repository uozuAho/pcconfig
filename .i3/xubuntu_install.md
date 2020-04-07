# install i3 on xubuntu

```
sudo apt-get install nitrogen i3
sudo add-apt-repository ppa:aacebedo/libi3ipc-glib
sudo apt-get update
sudo apt-get install libi3ipc-glib
# todo: is this necessary?
sudo add-apt-repository ppa:aacebedo/xfce4-i3-workspaces-plugin
sudo apt-get update
sudo apt-get install xfce4-i3-workspaces-plugin
```

- open 'session and startup', goto 'session' tab
- for xfwm4, xfdesktop, xfce4-panel, set 'restart style' to 'never'
- click 'save session'
- goto 'application autostart' tab
- add 'i3' to autostart
- open 'keyboard' dialog, goto 'application shortcuts' tab
- remove all shortcuts

    mkdir ~/.i3
    touch ~/.i3/config

- get your favourite i3 config and paste it in the above file.
  - config in this dir

- remove all keyboard shortcuts from dunst (xubuntu notifications):
    + edit /etc/xdg/dunst/dunstrc
