# homebrew-waddly

Homebrew tap for [Waddly](https://github.com/nyatinte/Waddly), a desktop pet that reacts to keyboard input.

Waddly supports Apple Silicon Macs running macOS 14 (Sonoma) or later.

## Install

```sh
brew tap nyatinte/waddly
brew install --cask waddly-beta
```

The beta Cask installs `Waddly Beta.app`. The stable `waddly` Cask will be added with the first stable release.

## Casks

- `waddly-beta`: beta builds; the tap is updated manually, and beta releases do not update it automatically.
- `waddly`: stable builds; the stable release workflow updates its version and checksum.
