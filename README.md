# dotfiles

Personalized Mac setup.

## System Requirements

macOS Mojave 10.14.6.

## Installation

Download archive:

```bash
curl -sSL --output ./dotfiles.zip https://github.com/kristoforsalmin/dotfiles/zipball/master
```

Extract it:

```bash
unzip ./dotfiles.zip
```
Navigate to the newly created folder and run `copy-dotfiles.sh` script to copy dotfiles to your home directory:

```bash
bash ./scripts/copy-dotfiles.sh
```

Sign in to the App Store and run `install-apps.sh` script to install third-party apps:

```bash
bash ./scripts/install-apps.sh
```

Run `set-defaults.sh` script to set hidden macOS defaults:

```bash
bash ./scripts/set-defaults.sh
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
