#!/usr/bin/env bash
#
# Download and install laptop script and (local) dotfiles.

set -o errexit
set -o pipefail
set -o nounset

readonly GITHUB_USER=rodrigobdz
readonly DEV_DIR=~/dev

fetch_local_dotfiles() {
  git clone git@github.com:"$GITHUB_USER"/dotfiles-local.git ~/dotfiles-local
}

fetch_dotfiles() {
  git clone git@github.com:thoughtbot/dotfiles.git ~/dotfiles
}

install_dotfiles() {
  env RCRC="$HOME/dotfiles/rcrc" rcup
}

install_laptop() {
  mkdir -p "$DEV_DIR" && cd "$DEV_DIR"
  curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
  sh mac 2>&1 | tee ~/laptop.log
}

main() {
  fetch_local_dotfiles
  fetch_dotfiles
  install_dotfiles
  install_laptop
}

main "$@"
