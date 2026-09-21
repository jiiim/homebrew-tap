cask "ds-menu-bar" do
  version "0.0.9"
  sha256 "ea8adefb33543e976860b594caa17c50e601599cc8e7b2e52e0a3a9275d92ba6"

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
