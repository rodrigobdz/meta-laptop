# meta-laptop

Automated installation of laptop script and dotfiles

### What's included?

1. [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
1. [rodrigobdz/dotfiles-local](https://github.com/rodrigobdz/dotfiles-local)
1. [thoughtbot/laptop](https://github.com/thoughtbot/laptop)

## Requirements

- Git

## Usage

1. Download script

    ```sh
    curl --remote-name https://raw.githubusercontent.com/rodrigobdz/meta-laptop/master/meta-laptop.sh
    ```

1. Execute script

    ```sh
    sh meta-laptop.sh 2>&1 | tee ~/meta-laptop.log
    ```

    To add your own `dotfiles-local` set and prepend env variable `GITHUB_USER` to the previous command.

    ```sh
    GITHUB_USER=rodrigobdz sh meta-laptop.sh 2>&1 | tee ~/meta-laptop.log
    ```

1. Optionally, review log

    ```sh
    less ~/meta-laptop.log
    ```

1. Remove `asdf`

    ```sh
    rm -rf ~/.asdf*
    ```

1. Remove `tpope/vim-rails` and `tpope/vim-rake` from [`~/.vimrc.bundles`](https://github.com/thoughtbot/dotfiles/blob/42a313bde1f4dc7a75cc276714008c77bf3821bf/vimrc.bundles#L40-L41) because [vim-plug](https://github.com/junegunn/vim-plug) doesn't offer an uninstall command to be used in vimrc.bundles.local, for instance.

1. Laptop script is known to fail in this [LOC](https://github.com/thoughtbot/laptop/blob/c3d5a26bfa0a506337f937c249ee8bc3a6853cb6/mac#L196). Continue with laptop.local.

1. Manually install: VSCode, Signal, Zoom.

1. iTerm2: _Make iTerm Default Term_ and _Install Shell Integration_.

1. VSCode: Sign and Turn on Settings Sync

1. Alfred: Set preferences folder to folder with Alfred.alfredpreferences

1. Sublime: Install package control using command palette and then restore preferences using Dropbox/config/Sublime/INSTRUCTIONS.md

1. fish: Install abbreviations using export_abbreviations.fish script from backup

1. SourceTree: Install custom actions from config/sourcetree folder

1. npm: Check if installed, otherwise, install with `brew install node` and disable `npm_up` in up-mac

1. Restore backup from Time Machine

## Credits

- [minimal-readme](https://github.com/rodrigobdz/minimal-readme) - Minimal readme template

## License

[MIT](LICENSE) © [rodrigobdz](https://rodrigobdz.github.io/).
