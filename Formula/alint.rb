class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.7.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.7.0/alint-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "c908b5d0a0c65aaec910f952120351d57127197c111b2f098a0081e818bea4c7"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.7.0/alint-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "6209202619e8ffc75d0d8fd2d94a2f0dc89b72b61af63eebda4edcd02d280770"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.7.0/alint-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7d51b2c95901e6bbadc039d40012a228755e7f0c5fc22d2a7249745466ec7b1"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.7.0/alint-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6d853279109063e8ebb0515a9a9ef005f70d2de27ad3d3a9bd3d49c62610b68"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
