cask "waddly" do
  version "0.1.0"
  sha256 "a68f277e6e1d46d3dec28f41e226f493beb0d74d11f19c1e867cf6849923ef43"

  url "https://github.com/nyatinte/Waddly/releases/download/v#{version}/Waddly-#{version}-macos-arm64.dmg"
  name "Waddly"
  desc "Desktop pet that reacts to keyboard input"
  homepage "https://github.com/nyatinte/Waddly"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waddly.app"
end
