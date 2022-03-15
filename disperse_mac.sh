#!/bin/zsh
function create_admin_cmd {
  echo code /Users/Warwick.Stone/Library/CloudStorage/OneDrive-MYOB/mega_links/notes > ~/admin.command
}

function install_oh_my_zsh {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  rm ~/.zshrc
}

function copy_my_dotfiles {
  cp .zshrc.mac ~/.zshrc
  cp .woz.aliases.mac ~/.woz.aliases
}

create_admin_cmd
install_oh_my_zsh
copy_my_dotfiles
