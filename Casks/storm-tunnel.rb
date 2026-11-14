cask "storm-tunnel" do
  version "0.9.4,11"
  sha256 "bcfeab623fd52786c42a172d0d5bc47752508ed740d8ee0269b38dd35c4912aa"

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
