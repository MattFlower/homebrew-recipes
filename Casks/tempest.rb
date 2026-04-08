cask "tempest" do
  version "0.11.0"
  sha256 "bf6d07c3f74c340fded2b84f0f07024dd943972e1e94ab0014259515b9f3452e"

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
