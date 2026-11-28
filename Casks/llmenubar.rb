cask "llmenubar" do
  version "0.0.8"
  sha256 "8dd5ba509f18648d42aadd54e2babf488e9ef94350085b05ed626b2b27511713"

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
