class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.21.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.21.2/alint-v0.21.2-aarch64-apple-darwin.tar.gz"
      sha256 "ac4edb9cbbe2e16bc49cefe8a672d8f9e30c0d4bc5e6b79970b8cfdf8a1990f0"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.21.2/alint-v0.21.2-x86_64-apple-darwin.tar.gz"
      sha256 "1ed3068367babe297a3fd892e9c32698211fd65accf253e03dd99509c029e1ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.21.2/alint-v0.21.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9d3a34c2042ba14d67a9aa210642028f44fbed9d8e762bda4a4595b320cd234"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.21.2/alint-v0.21.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "954fb3059922676e11eee5f6bb55f71589e2a344dc91cdff8a7eb178716ed883"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
