cask "ds-menu-bar" do
  version "0.0.15"
  sha256 "6297cbb34ea7beb150c48e16ecd265e912872f3fefefa18dd7dd9dcb79613284"

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
