class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.4.6"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.6/alint-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "311a5b2f88df5528b25c2ca9028fec5e928ee8d133655b27db6cacb2562081b4"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.6/alint-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "81730100482a969f95a8a7b0909bfbb915087ee18000bf9078bcace31444c7d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.6/alint-v0.4.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84ac49dfc1962a4b271d866eab035311f3086f538cafa5fd287a1044563106f9"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.6/alint-v0.4.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfc0c20e46cce26da96fa19dd46aef28d5da504782fd9ca7ec600f8d20a0b7e4"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
