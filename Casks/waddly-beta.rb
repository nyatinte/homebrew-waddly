cask "waddly-beta" do
  version "0.1.0-beta.1"
  sha256 "bfa4d25a2c97834fc402e785d93d4aee3bd58bfff772719415761d74f4f5821d"

  url "https://github.com/nyatinte/Waddly/releases/download/v#{version}/Waddly-#{version}-macos-arm64.dmg"
  name "Waddly Beta"
  desc "Beta release of a desktop pet that reacts to keyboard input"
  homepage "https://github.com/nyatinte/Waddly"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waddly.app", target: "Waddly Beta.app"

  # Waddly is ad-hoc signed and not notarized; match the documented Homebrew behavior.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Waddly Beta.app"]
  end
end
