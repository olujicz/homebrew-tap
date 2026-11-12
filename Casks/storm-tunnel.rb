cask "storm-tunnel" do
  version "0.9.3,10"
  sha256 "6e1b53fb8434551ea6596d657794029336541c952adfaf459e13730e4576774f"

  url "https://updates.storm-tunnel.app/StormTunnel-#{version.csv.first}-#{version.csv.second}.zip?download=1"
  name "Storm Tunnel"
  desc "Menu bar app for AWS Session Manager and SSH tunnels"
  homepage "https://storm-tunnel.app/"

  livecheck do
    url "https://updates.storm-tunnel.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "StormTunnel.app"
end
