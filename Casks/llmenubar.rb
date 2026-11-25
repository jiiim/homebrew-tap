cask "llmenubar" do
  version "0.0.6"
  sha256 "5f651bd8206de20fbdcaad48d132a63e28820deb7a6341faf3871e83d0d7f2d1"

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
