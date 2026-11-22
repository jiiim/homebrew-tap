cask "llmenubar" do
  version "0.0.4"
  sha256 "88277043e15023e003bc034c63bdf9c480c6af943248a717812805beb87b2420"

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
