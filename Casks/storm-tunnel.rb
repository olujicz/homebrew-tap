cask "storm-tunnel" do
  version "0.9.2,9"
  sha256 "a4031b5fa96ed2f392294bfa065bb0ec79333c09ab6abf3fdc1ea9f942edb446"

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
