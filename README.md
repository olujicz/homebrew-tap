# Storm Tunnel Homebrew tap

Install [Storm Tunnel](https://storm-tunnel.app/), a native macOS menu-bar app for AWS Session Manager and SSH tunnels.

```sh
brew install --cask olujicz/tap/storm-tunnel
```

Requires macOS 15 or later, on Apple silicon or Intel. One tunnel at a time is free without an account or card. See [pricing](https://storm-tunnel.app/pricing/) for optional Pro features.

AWS tunnels also need AWS CLI v2, the Session Manager plugin, and an authorized SSM-managed instance that can reach the destination. Follow the [setup guide](https://storm-tunnel.app/docs/getting-started/).

This tap distributes the published, signed app with a pinned SHA-256 checksum. The app has a built-in updater. To check explicitly for a Homebrew update:

```sh
brew update
brew upgrade --cask --greedy olujicz/tap/storm-tunnel
```

To uninstall the Homebrew-managed app:

```sh
brew uninstall --cask storm-tunnel
```

The cask has no data-removal hooks. Normal uninstall leaves saved settings and Keychain items in place. If you already installed the app manually, do not use `--force` to replace it without first checking your existing installation.

Report packaging problems in this repository's issues. For app help, see [Storm Tunnel support](https://storm-tunnel.app/contact/).

## Maintaining the cask

After publishing an app release, update `version` and `sha256` in `Casks/storm-tunnel.rb`. The version includes the marketing version and build number, matching the Sparkle appcast. Verify the public DMG, cask metadata, livecheck, and installation before publishing a tap update. Keep the website's download instructions aligned.
