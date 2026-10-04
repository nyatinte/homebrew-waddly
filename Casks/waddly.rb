cask "waddly" do
  version "0.1.2"
  sha256 "0a59a5ad9c8abc8fe49ec969d5cc7196eb13ea5e83cea5b5d713c78f5a59bca5"

  url "https://github.com/nyatinte/Waddly/releases/download/v#{version}/Waddly-#{version}-macos-arm64.dmg"
  name "Waddly"
  desc "Desktop pet that reacts to keyboard input"
  homepage "https://github.com/nyatinte/Waddly"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waddly.app"
end
