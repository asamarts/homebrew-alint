class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.13.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.13.0/alint-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "751d2dc919eaf274186a2c9e7d27c8250eec5b37d71123ce9af8dada8ec60c23"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.13.0/alint-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "5482f66ebc2e1511dab3b69e57d53737f601fc38de3760f4a6c36b6bbda3d48f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.13.0/alint-v0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ab6d4adefcf3cf9d3535533bdbde439b050b570de0ebd25ba57921cf9dc6ef2"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.13.0/alint-v0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1dae9aea5e71e8bfdb0a88ac9197db0d1a5afd9d31bf2c82a8154afa6c1a82f6"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
