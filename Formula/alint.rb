class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.20"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.20/alint-v0.9.20-aarch64-apple-darwin.tar.gz"
      sha256 "c76642dbb29dfc805313ed2b751876f31974ef1930cd367673d98f7f25275dcd"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.20/alint-v0.9.20-x86_64-apple-darwin.tar.gz"
      sha256 "745bddaa61d17e46f6e72de17a16c2c9ee0c9626f412aa85c00c0f56c7a689b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.20/alint-v0.9.20-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5dbe5614ecd7c06b918088c6f603f792a7e2e834bce46151176e956df43fa797"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.20/alint-v0.9.20-x86_64-unknown-linux-musl.tar.gz"
      sha256 "495acf7e191f45287fd69fdfbe8184ebce8be7a026011484ba5f5c2200221f37"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
