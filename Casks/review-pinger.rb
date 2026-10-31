# Rendered by .github/workflows/homebrew.yml into CoenWarmer/homebrew-tap.
cask "review-pinger" do
  version "untagged-0a1227be9061f858cdb1"
  sha256 "0c581127f8a6d8f753c5fcd03607063199557733f2785e27f10d2c307ce61a43"

  url "https://github.com/CoenWarmer/github-review-pinger/releases/download/untagged-0a1227be9061f858cdb1/Review.Pinger_0.8.0_universal.dmg"
  name "Review Pinger"
  desc "Menu bar app showing your open GitHub pull requests and their review status"
  homepage "https://github.com/CoenWarmer/github-review-pinger"

  # The app updates itself; brew shouldn't fight it.
  auto_updates true

  app "Review Pinger.app"

  zap trash: [
    "~/Library/Application Support/dev.coenwarmer.reviewpinger",
    "~/Library/Caches/dev.coenwarmer.reviewpinger",
    "~/Library/WebKit/dev.coenwarmer.reviewpinger",
  ]

  caveats <<~EOS
    Review Pinger is not notarized by Apple. The first time you open it, macOS
    will block it: go to System Settings → Privacy & Security and click
    "Open Anyway".
  EOS
end
