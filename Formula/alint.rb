class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.8.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.8.0/alint-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "2ea1857192619e8df7cb5fa2a9868036eb9bde12b24bdb362bfd9a04d55ec49d"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.8.0/alint-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd5b0ac98eb1bac4601b2d67b128e790760c0defc90bcbfb5a665d1a399588c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.8.0/alint-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "638cb336f63f0aadd842f5c8ba09bdb6afbdba0e392760391695de12078ef617"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.8.0/alint-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d2d2631f4b68d65985bc40f4d41aab4e7c8b04e934745b7cb12101080f426b5"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
