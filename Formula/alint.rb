class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.10.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.10.1/alint-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "986c9d5dfa685dd4af702a3b3306956dcaea9c2ff0b9b9b945d68fa11859b1e5"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.10.1/alint-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "f7bd763ca70d334c0f3ac91dc9297a1b8adc1524594a1853f9a88a88bfa541ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.10.1/alint-v0.10.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c1e0340fdfef401eb7d3e6db9d2a83b6c1693a0dfe19797b705e56b82319c71"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.10.1/alint-v0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "581fe10c9b9293c53176cead2bd9af4e1944986390558a68e4519d0920b3d33a"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
