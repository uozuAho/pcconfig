# git on windows, what a pain

- install git for windows
- install putty
- generate/install a key pair as per github instructions
- use puttygen to save the private key as a ppk file (import then save)
- run pageant & open the ppk file
- add the following environment variable: GIT_SSH=C:\Program Files\PuTTY\plink.exe
    - or path\to\tortoise\TortoisePlink.exe if you're using tortoisegit
- in bash:

> plink.exe git@github.com
> TortoisePlink.exe git@github.com  # if you're using tortoisegit

plink will ask if you want to trust github's signature. After you confirm,
you should see:

> Hi uozuAho! You've successfully authenticated, but GitHub does not provide shell access

If it fails to authenticate:
- make sure your key is loaded into pageant
- make sure your public key is saved in github

Finally:
- create a shortcut to pageant on the desktop
- edit the shortcut properties
    - start in the path where your keys are
    - add the names of the ppk files after the target
    - now you can double click this shortcut to load keys
