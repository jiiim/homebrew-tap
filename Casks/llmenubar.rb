cask "llmenubar" do
  version "0.0.2"
  sha256 "5287ab6532ee659a91398fb68e39988d1b554ad6de238c1c4c61189ecddda00b"

  url "https://github.com/jiiim/llmenubar/releases/download/v#{version}/LLMenuBar-v#{version}-arm64.dmg"
  name "LLMenuBar"
  desc "Menu bar controller for a local Splash inference engine"
  homepage "https://github.com/jiiim/llmenubar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "LLMenuBar.app"

  zap trash: [
    "~/Library/Logs/llmenubar",
    "~/Library/Preferences/com.jiiim.llmenubar.plist",
  ]
end
