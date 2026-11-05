cask "waddly" do
  version "1.9.5"
  sha256 "cd5bd505bf5ac4a3ea3795b46eed756df80b243f29596f3edb78fa5e462f6ca4"

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
