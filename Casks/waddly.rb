cask "waddly" do
  version "1.2.0"
  sha256 "e6524b8523b21fd699503c1bdf4ef05cda3f0e86ab461326a2013f13d5c8e8a7"

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
