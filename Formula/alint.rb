class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.4.10"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.10/alint-v0.4.10-aarch64-apple-darwin.tar.gz"
      sha256 "cfb32078f000437219c973a080cbec4c58ded4030200e2eef01eee841403e804"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.10/alint-v0.4.10-x86_64-apple-darwin.tar.gz"
      sha256 "3366ed6efd49dc21e84ed13132cb01007407063480890f4e2ce9e648b5942d4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.10/alint-v0.4.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86fccf1a4757287dd20b1b724e0d5d431e99b36429a625d8e5291526007a85a6"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.10/alint-v0.4.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d59678bae474327d85f10887258d9a05fcebe91c51cc0a018847912347ed4df4"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
