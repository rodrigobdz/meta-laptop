#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o errtrace

# 1. custom dotfiles-local
git clone https://github.com/$GITHUB_USER/dotfiles-local ~/dotfiles-local

# 2. thoughtbot/dotfiles
chsh -s $(which zsh)
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup

# 3. thoughtbot/laptop
mkdir -p $DEV_DIR && cd $DEV_DIR
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log

