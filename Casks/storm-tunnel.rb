cask "storm-tunnel" do
  version "0.9.2,9"
  sha256 "74239428f329cf742fa3ba56208a47fa66abf81fcd6a6145a827aa08eeff6f55"

  url "https://updates.storm-tunnel.app/StormTunnel-#{version.csv.first}.dmg"
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
