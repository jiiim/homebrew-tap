cask "ds-menu-bar" do
  version "0.0.10"
  sha256 "8f99eb5b945ff2d793cdfd61eadb191b3eb280666135d8b1c6da42c5bb97068d"

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
