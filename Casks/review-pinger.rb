# Rendered by .github/workflows/homebrew.yml into CoenWarmer/homebrew-tap.
cask "review-pinger" do
  version "0.6.4"
  sha256 "f7dd7b497449d3fbbf5fb6fa14386c6bd41a7ddd6a4ed5de7980a9dc5bc0ac2e"

  url "https://github.com/CoenWarmer/github-review-pinger/releases/download/v0.6.4/Review.Pinger_0.6.4_universal.dmg"
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
