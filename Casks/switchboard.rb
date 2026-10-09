# Homebrew Cask for Switchboard — a macOS Stream Deck plugin.
#
# Install:  brew install --cask windaddict/switchboard/switchboard
#
# Updating for a new release:
#   1. In the switchboard-streamdeck repo: `npm run build && npm run pack:zip`.
#   2. Attach dist/com.movingavg.switchboard.sdPlugin.zip to a GitHub Release
#      tagged v<version>.
#   3. Bump `version` and `sha256` below
#      (`shasum -a 256 dist/com.movingavg.switchboard.sdPlugin.zip`).

cask "switchboard" do
  version "1.5.0"
  sha256 "1c05573dd3d7385c802fea0d946e89a9c9d9dfbd80e120a00a5337f0c3d6b6a4"

  url "https://github.com/windaddict/switchboard-streamdeck/releases/download/v#{version}/com.movingavg.switchboard.sdPlugin.zip"
  name "Switchboard"
  desc "Stream Deck plugin with live Claude Code/Codex/Cursor keys and fast window switching"
  homepage "https://github.com/windaddict/switchboard-streamdeck"

  depends_on macos: :monterey

  # Install the self-contained plugin folder into the Stream Deck Plugins dir.
  artifact "com.movingavg.switchboard.sdPlugin",
           target: "#{Dir.home}/Library/Application Support/" \
                   "com.elgato.StreamDeck/Plugins/com.movingavg.switchboard.sdPlugin"

  zap trash: "#{Dir.home}/Library/Application Support/" \
             "com.elgato.StreamDeck/Plugins/com.movingavg.switchboard.sdPlugin"

  caveats <<~EOS
    Quit and relaunch the Stream Deck app to load Switchboard, then drag its
    actions onto your keys/dials. On first use macOS will ask for Accessibility
    and Automation permissions for Stream Deck — approve them.
  EOS
end
