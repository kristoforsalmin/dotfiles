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
  * General
  * Desktop & Screen Saver
  * Dock
  * Security & Privacy
  * Spotlight
  * Displays
  * Energy Saver
  * Keyboard
  * Trackpad
  * Sound
  * Siri
  * Date & Time
* [Finder](./docs/finder/README.md)

## License

Code available under the MIT license.
