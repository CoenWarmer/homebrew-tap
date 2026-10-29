# Rendered by .github/workflows/homebrew.yml into CoenWarmer/homebrew-tap.
cask "review-pinger" do
  version "0.6.1"
  sha256 "6bd6ab1d46ee1e7a3c8d57eb9fb7554b224105d7082f4d76bc2467d1d765a514"

  url "https://github.com/CoenWarmer/github-review-pinger/releases/download/v0.6.1/Review.Pinger_0.6.1_universal.dmg"
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
