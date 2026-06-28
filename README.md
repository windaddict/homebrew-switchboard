# homebrew-switchboard

A [Homebrew](https://brew.sh) tap for **[Switchboard](https://github.com/windaddict/switchboard-streamdeck)** — a macOS Stream Deck plugin for fast context-switching across Safari tabs, app/tmux/iTerm2 windows, BBEdit documents, and files.

## Install

```bash
brew install --cask windaddict/switchboard/switchboard
```

Then **quit and relaunch the Stream Deck app** and drag Switchboard's actions onto your keys/dials. On first use, macOS asks for Accessibility and Automation permissions for Stream Deck — approve them.

To upgrade later:

```bash
brew update
brew upgrade --cask switchboard
```

To remove it (and clean up the installed plugin folder):

```bash
brew uninstall --cask switchboard
brew uninstall --zap --cask switchboard   # also removes the plugin from ~/Library
```

## What this tap installs

The cask downloads the released `com.movingavg.switchboard.sdPlugin.zip` and unpacks the self-contained plugin folder into:

```
~/Library/Application Support/com.elgato.StreamDeck/Plugins/
```

Requires macOS 12 (Monterey)+ and the Stream Deck app 6.5+.

## License & trademarks

Switchboard is MIT-licensed. It is an independent project — **not affiliated with, endorsed by, or sponsored by Elgato or Corsair Memory, Inc.** Stream Deck is a trademark of Corsair Memory, Inc., used here only to describe compatibility.
