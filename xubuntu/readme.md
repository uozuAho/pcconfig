Linux system setup
==================

NOTE: This is getting old, haven't used in a while...

Some notes about setting up linux just how I like it. Ideally all this
stuff would be in a script but meh...

Assuming you're running Xubuntu.

# Eclipse
```bash
# download eclipse
wget eclipse-from-somewhere
tar -xfz eclipse /install/path
# Copy this to /usr/share/applications/eclipse.desktop
# to add to application finder:
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse IDE
GenericName=IDE
Comment=...Eclipse IDE
Exec=/home/uozu/uozu/apps/eclipse/eclipse
Terminal=false
MimeType=text/plain;
Categories=TextEditor;Development;
StartupNotify=true
```

# fstab example
```bash
# /etc/fstab: static file system information.
#
# IMPORTANT: Don't mount uozu_net and winhome automatically with ubuntu,
# cos it'll put them under /media/<user>/uozu_net etc. Create the directories
# manually, and MAKE SURE to change the owner to uozu (or whatever you username
# is), otherwise backup scripts will fail.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# This is even better: `ls -l /dev/disk/by-uuid`
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/sda5 during installation
UUID=599bef4c-c472-48cc-9091-2a8df5b8bb20 /               ext4    errors=remount-ro 0       1
# swap was on /dev/sda3 during installation
UUID=023db74f-faf0-49ca-890d-d68ae9ca8794 none            swap    sw              0       0
# network share
//192.168.1.254/share /media/share cifs username=user,password=password,iocharset=utf8,sec=ntlm  0  0
# my network drive
//192.168.1.254/uozu /media/uozu_net cifs username=user,password=password,iocharset=utf8,sec=ntlm  0  0
# winHome - get uuid using sudo blkid /dev/sdaX
UUID=154F9B8116D6E38F /media/winhome ntfs
```


# Xubuntu Super-Q close window shortcut
There's a script to do this, but just in case it stops working for some reason.
I like this, it's not default.
- go to settings editor
- xfce4-keyboard-shortcuts
- Click 'new':
    + Property: /xfwm4/custom/<Super>q
    + Type: String
    + Value: close_window_key


# i3

run this stuff:

    sudo apt-get install nitrogen i3
    sudo add-apt-repository ppa:aacebedo/libi3ipc-glib
    sudo apt-get update
    sudo apt-get install libi3ipc-glib
    # todo: is this necessary?
    sudo add-apt-repository ppa:aacebedo/xfce4-i3-workspaces-plugin
    sudo apt-get update
    sudo apt-get install xfce4-i3-workspaces-plugin

- open 'session and startup', goto 'session' tab
- for xfwm4, xfdesktop, xfce4-panel, set 'restart style' to 'never'
- click 'save session'
- goto 'application autostart' tab
- add 'i3' to autostart
- open 'keyboard' dialog, goto 'application shortcuts' tab
- remove all shortcuts

    mkdir ~/.i3
    cp ../.i3/config ~/.i3/

- get your favourite i3 config and paste it in the above file. Mine's at
  https://gist.github.com/uozuAho/f8dbb1f8033e20afbced58ad2052fbf6

- remove all keyboard shortcuts from dunst (xubuntu notifications):
    + edit /etc/xdg/dunst/dunstrc