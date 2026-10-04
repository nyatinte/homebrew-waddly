cask "waddly" do
  version "0.1.1"
  sha256 "3c91e8a745c3b8dedfcdb4c85a65625bb110ee2c4d0bcc03b6fc1de6e4431a48"

  url "https://github.com/nyatinte/Waddly/releases/download/v#{version}/Waddly-#{version}-macos-arm64.dmg"
  name "Waddly"
  desc "Desktop pet that reacts to keyboard input"
  homepage "https://github.com/nyatinte/Waddly"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waddly.app"
end
