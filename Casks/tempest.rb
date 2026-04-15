cask "tempest" do
  version "0.13.0"
  sha256 "7104fdd4329a344c142133dfb6575218cdb8c4bd18ddc42a503c54f3420f3772"

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
