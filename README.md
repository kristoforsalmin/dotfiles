# dotfiles

Personalized Mac setup.

## System Requirements

macOS Mojave 10.14.6.

## Installation

Set Zsh as a default shell:

```sh
chsh -s "$(which zsh)"
```

Restart Terminal and download the archive:

```sh
curl -sSL https://github.com/kristoforsalmin/dotfiles/zipball/master > ./dotfiles.zip
```

Extract it:

```sh
unzip ./dotfiles.zip
```

Navigate to the newly created folder, sign in to the App Store and run `install-apps.sh` script to install apps:

```sh
zsh ./scripts/install-apps.sh
```

Run `copy-dotfiles.sh` script to copy dotfiles to your home directory:

```sh
zsh ./scripts/copy-dotfiles.sh
```

Run `set-defaults.sh` script to set hidden macOS defaults:

```sh
zsh ./scripts/set-defaults.sh
```

## Configuration

* [General](./docs/general/README.md)
* [System Preferences](./docs/system-preferences/README.md)
* [Finder](./docs/finder/README.md)
* [Terminal](./docs/terminal/README.md)
* [Safari](./docs/safari/README.md)
* [Mail](./docs/mail/README.md)

## License

Code available under the MIT license.
