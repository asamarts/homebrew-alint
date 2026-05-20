class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.10.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.10.0/alint-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "3da82292467d0253b6abfbd004826983d19089efa49523f2c6f59192224de9f7"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.10.0/alint-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "99d14cfe379a145dd80b8d6b807de50fc6fec8334e9655dd2b60600572e53c82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.10.0/alint-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "387bce5f72413c9ea58dea3066245ba0195f39599ac6605353ad629c571d0a92"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.10.0/alint-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4866626f3035cb32e1b4c90aab7709b4c64ba2d4b689a21a26c76f147d1dd36f"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
