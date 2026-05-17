class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.23"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.23/alint-v0.9.23-aarch64-apple-darwin.tar.gz"
      sha256 "c9fe009ab4939b1aa8bb1efb177d9254017a7346b0166d972c8eaff2305a6f42"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.23/alint-v0.9.23-x86_64-apple-darwin.tar.gz"
      sha256 "e69d533536052130b850d03b3c3e1fba7e56b5d4e1d6bf76df2a612cb5968ee9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.23/alint-v0.9.23-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc2748317f9bf4b1106ae8c094abdf2cb337330ea2315b3c9e42b07ea67c08ca"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.23/alint-v0.9.23-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e323b333a7fc45db30d98c6ca92a4884708db916517fc8f700070ad93e556655"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
