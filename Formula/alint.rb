class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.8.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.8.1/alint-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "7b3d7a7ff6456884e907bf38886de78d34803b0fe2bb817288ecabaa2ab5a402"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.8.1/alint-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "d190ea87cb8958ef93dafb259d79c608cd18303393f1f1f514062e34598a0050"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.8.1/alint-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "646fc071dc7cde1818539cdf58de6c0267dae816bcc1c73ea4cb8d37333b073a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.8.1/alint-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "600be8a67115e4b1fe3a22dd19bd2d5d106c28e09523863585dc0d3e2f6185e3"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
