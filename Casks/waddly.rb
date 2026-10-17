cask "waddly" do
  version "1.3.0"
  sha256 "3b85f7f5f43211cc04d866e85cde2a29376c3120b61af62eb2a34e5f16d26445"

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
