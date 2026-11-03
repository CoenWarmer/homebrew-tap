# Rendered by .github/workflows/homebrew.yml into CoenWarmer/homebrew-tap.
cask "review-pinger" do
  version "untagged-12c854eb7295e7a19ba4"
  sha256 "fd4a4ac6f74ec3a6430eaf710cc5a13ce1a476bc7f328035bed9e6cb54c6c34e"

  url "https://github.com/CoenWarmer/github-review-pinger/releases/download/untagged-12c854eb7295e7a19ba4/Review.Pinger_0.9.0_universal.dmg"
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
