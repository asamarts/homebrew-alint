class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.18.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.2/alint-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "ccfb4d13c6001b6ee5d31f2e139ce3e9710df54ba75c5601ef2a96be9ad8d4b2"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.2/alint-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "23dc62149aacc8168f922e35e067a244d3c715725182322dcc3564129968dd8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.2/alint-v0.18.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "133ae54580b1c84d6aa1641d72448267241064ee9c5be119bb649f6acad9e005"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.2/alint-v0.18.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce1f182bf3205aceab62fad40dbdd7502de638ed89cbb4fef10320803384ff9b"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
