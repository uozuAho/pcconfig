#!/bin/zsh
function create_admin_cmd {
  # you may need to run this once from finder for it to appear in spotlight
  echo code /Users/Warwick.Stone/Library/CloudStorage/OneDrive-MYOB/mega_links/notes > ~/admin.command
}

function install_oh_my_zsh {
  # note: this overwrites ~/.zshrc
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function copy_my_dotfiles {
  cp .zshrc.mac ~/.zshrc
  cp .bash.aliases ~
  cp .woz.aliases.mac ~
  cp .woz.aliases.mac.myob ~
}

create_admin_cmd
install_oh_my_zsh
copy_my_dotfiles
