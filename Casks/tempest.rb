cask "tempest" do
  version "0.13.1"
  sha256 "85e1f194347530eb1e1fb84c553f77a96c570bd828bb20173986877ed8ef702b"

  url "https://github.com/MattFlower/tempest/releases/download/v#{version}/Tempest.dmg"
  name "Tempest"
  desc "macOS developer tool for AI-assisted coding"
  homepage "https://gotempest.net"

  depends_on macos: ">= :ventura"

  app "Tempest.app"

  zap trash: [
    "~/Library/Application Support/com.tempest.app",
    "~/Library/Preferences/com.tempest.app.plist",
    "~/Library/Caches/com.tempest.app",
  ]
end
