cask "omnikeys" do
  version "1.0.0"
  sha256 "4fb0a8cf034da8429c602ed97281b736e4b838a477f51a288dc598e924becdcb"

  url "https://github.com/olujicz/omnikeys/releases/download/v#{version}/OmniKeys-#{version}.zip"
  name "OmniKeys"
  desc "Floating cheat sheet for OmniWM keyboard shortcuts"
  homepage "https://github.com/olujicz/omnikeys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "OmniKeys.app"

  uninstall quit: "rs.in.olujic.omnikeys"

  zap trash: [
    "~/.config/omnikeys",
    "~/Library/Preferences/rs.in.olujic.omnikeys.plist",
  ]
end
