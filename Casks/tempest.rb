cask "tempest" do
  version "0.8.0"
  sha256 "PLACEHOLDER"

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
