# Rendered by .github/workflows/homebrew.yml into CoenWarmer/homebrew-tap.
cask "review-pinger" do
  version "0.1.1"
  sha256 "1afc6888d948d341fc7b8fc920d736d177f31e793f339d60303e3713a90e8976"

  url "https://github.com/CoenWarmer/github-review-pinger/releases/download/v0.1.1/Review.Pinger_0.1.1_universal.dmg"
  name "Review Pinger"
  desc "Menu bar app showing your open GitHub pull requests and their review status"
  homepage "https://github.com/CoenWarmer/github-review-pinger"

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
