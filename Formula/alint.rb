class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.11.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.11.0/alint-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ef3203985f1eebfd469b358192c78b69e9c0b9a9636f24278e8fb2fcc68f1c06"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.11.0/alint-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f9e00af16714c46a816cca40404c9797596f51dd5ce19dc3cfc541433375c2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.11.0/alint-v0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bad41b3a43263aa13d61b11fedc15dfd4d8dc4475cc75a9fa7766ed448634297"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.11.0/alint-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f288a8e41cb2fd2734dce5cb11d529496e347f2d1239d1fb0e014e91d2dcff4"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
