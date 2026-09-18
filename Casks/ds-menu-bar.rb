cask "ds-menu-bar" do
  version "0.0.4"
  sha256 "81c0a0baf66f7d4558af80bd63e83dadb5b9355d1be1be0c035ac1bf133538ab"

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

  uninstall quit: "com.jiiim.ds-menu-bar"

  zap trash: [
    "~/Library/Logs/dsmenubar",
    "~/Library/Preferences/com.jiiim.ds-menu-bar.plist",
  ]
end
