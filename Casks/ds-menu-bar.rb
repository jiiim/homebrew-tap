cask "ds-menu-bar" do
  version "0.0.14"
  sha256 "35226ddd2e63c487d04302231654e6a599564b42b7c6d2c2fb2df3a0cfe8b7a8"

  url "https://github.com/jiiim/ds-menu-bar/releases/download/v#{version}/DS-Menu-Bar-v#{version}-arm64.dmg"
  name "DS Menu Bar"
  desc "Control a user-managed DwarfStar server from the menu bar"
  homepage "https://github.com/jiiim/ds-menu-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "DS Menu Bar.app"

  zap trash: [
    "~/Library/Logs/dsmenubar",
    "~/Library/Preferences/com.jiiim.ds-menu-bar.plist",
  ]
end
