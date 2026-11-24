cask "storm-tunnel" do
  version "0.9.5,12"
  sha256 "f9908c994d37a7ddc6fd4ab9af138a8333b6b5eb3926fa2f95a65198b2a9e253"

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
