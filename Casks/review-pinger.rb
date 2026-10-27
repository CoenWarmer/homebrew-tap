# Rendered by .github/workflows/homebrew.yml into CoenWarmer/homebrew-tap.
cask "review-pinger" do
  version "0.1.2"
  sha256 "7d3781a612bb6bc6d39784fefb493c54dd9e667f71520fcde36cb9a7137d4d6b"

  url "https://github.com/CoenWarmer/github-review-pinger/releases/download/v0.1.2/Review.Pinger_0.1.2_universal.dmg"
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
