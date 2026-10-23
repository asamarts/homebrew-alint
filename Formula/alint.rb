class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.20.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.20.1/alint-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "575da9ea1563b4872d0a5ec019d7a3b02653c2373d21a868312fef9638e767de"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.20.1/alint-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "511c10d14841f7f763c3884d6815b4d0377c11610b00b0b31b7d41befc706da8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.20.1/alint-v0.20.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48d9bd4f4e871356db287b4dd01404a9b2bc52e6776ce9d3fdfe06214a00f5d9"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.20.1/alint-v0.20.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e74739ff65afa5ebcce067942430cf6794bed1cce402ac28b08c17eff570fcd"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
