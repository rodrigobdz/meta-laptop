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

## Credits

- [minimal-readme](https://github.com/rodrigobdz/minimal-readme) - Minimal readme template

## License

[MIT](LICENSE) © [rodrigobdz](https://rodrigobdz.github.io/).
