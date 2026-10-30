# homebrew-waddly

Homebrew tap for [Waddly](https://github.com/nyatinte/Waddly), a desktop pet that reacts to keyboard input.

Waddly supports Apple Silicon Macs running macOS 14 (Sonoma) or later.

## Install

Homebrew 6.0 or later requires explicit trust for third-party Casks. This trusts only the Waddly Cask, not the whole tap. If `brew trust` reports `Unknown command`, run `brew update` first.

```sh
brew tap nyatinte/waddly
brew install --cask nyatinte/waddly/waddly
```

To install by short name instead, trust the Cask first:

```sh
brew update
brew tap nyatinte/waddly
brew trust --cask nyatinte/waddly/waddly
brew install --cask waddly
```

The Cask removes the quarantine attribute after installation and upgrades, so Gatekeeper's first-launch confirmation normally does not appear for Homebrew installs. Waddly is ad-hoc signed and not notarized; removing quarantine does not replace notarization or Developer ID signing. A DMG downloaded directly retains quarantine and may require approval in System Settings → Privacy & Security. Verify direct downloads with the `.sha256` file attached to the release.

## Uninstall

```sh
brew uninstall --cask waddly
brew untrust --cask nyatinte/waddly/waddly
```

## Casks

- `waddly`: stable builds; the release workflow updates its version and checksum.
