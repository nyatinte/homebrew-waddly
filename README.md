# homebrew-waddly

Homebrew tap for [Waddly](https://github.com/nyatinte/Waddly), a desktop pet that reacts to keyboard input.

Waddly supports Apple Silicon Macs running macOS 14 (Sonoma) or later.

## Install

```sh
brew tap nyatinte/waddly
brew install --cask waddly-beta
```

The beta Cask installs `Waddly Beta.app`.

Both Casks remove the quarantine attribute after installation and upgrades, so Gatekeeper's first-launch confirmation normally does not appear for Homebrew installs. Waddly is ad-hoc signed and not notarized; removing quarantine does not replace notarization or Developer ID signing. A DMG downloaded directly retains quarantine and may require approval in System Settings → Privacy & Security. Verify direct downloads with the `.sha256` file attached to the release.

## Casks

- `waddly-beta`: beta builds; the tap is updated manually, and beta releases do not update it automatically.
- `waddly`: stable builds; the stable release workflow updates its version and checksum.
