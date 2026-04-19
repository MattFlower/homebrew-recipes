cask "tempest" do
  version "0.15.0"
  sha256 "e1308eaecc6afb724aa6c7be088cda55ec456b6c867372547a18b868bb1fbdd9"

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
