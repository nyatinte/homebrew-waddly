cask "waddly" do
  version "1.5.0"
  sha256 "b745d5c2cdf17c75e9af3b344da772276e82c7413ab90686d89c428ce53e6017"

  url "https://github.com/nyatinte/Waddly/releases/download/v#{version}/Waddly-#{version}-macos-arm64.dmg"
  name "Waddly"
  desc "Desktop pet that reacts to keyboard input"
  homepage "https://github.com/nyatinte/Waddly"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waddly.app"

  # Waddly is ad-hoc signed and not notarized; match the documented Homebrew behavior.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Waddly.app"]
  end
end
