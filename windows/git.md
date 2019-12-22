# git on windows, what a pain

- install git for windows
- install putty
- generate/install a key pair as per github instructions
- use puttygen to save the private key as a ppk file (import then save)
- run pageant & open the ppk file
- add the following environment variable: GIT_SSH=C:\Program Files\PuTTY\plink.exe
- in bash:

    plink.exe git@github.com

- create a shortcut to pageant on the desktop
- edit the shortcut properties
    - start in the path where your keys are
    - add the names of the ppk files after the target
    - now you can double click this shortcut to load keys
