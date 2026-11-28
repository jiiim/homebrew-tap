cask "llmenubar" do
  version "0.0.7"
  sha256 "d6b75295ea46249aea99f1cb400ab7b0d5afac59de946140fe6cdaa63044e9c2"

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
