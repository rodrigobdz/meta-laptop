#!/usr/bin/env bash
#
# Download and install laptop script and (local) dotfiles.

set -o errexit
set -o pipefail
set -o nounset
set -o errtrace

git clone "https://github.com/$GITHUB_USER/dotfiles-local" ~/dotfiles-local

# 2. thoughtbot/dotfiles
chsh -s "$(command -v zsh)"
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles
env RCRC="$HOME/dotfiles/rcrc" rcup

# 3. thoughtbot/laptop
mkdir -p "$DEV_DIR" && cd "$DEV_DIR"
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log
