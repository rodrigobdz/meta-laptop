#!/usr/bin/env bash
#
# Download and install laptop script and (local) dotfiles.

set -o errexit
set -o pipefail
set -o nounset

fetch_local_dotfiles() {
  git clone "https://github.com/$GITHUB_USER/dotfiles-local" ~/dotfiles-local
}

install_dotfiles() {
  chsh -s "$(command -bv zsh)"
  git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles
  env RCRC="$HOME/dotfiles/rcrc" rcup
}

install_laptop() {
  mkdir -p "$DEV_DIR" && cd "$DEV_DIR"
  curl --remote-name https://raw.githubusercontent.com/rodrigobdz/laptop/master/mac
  sh mac 2>&1 | tee ~/laptop.log
}

main() {
  fetch_local_dotfiles
  install_dotfiles
  install_laptop
}

main "$@"
