class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.17.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.17.0/alint-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "99cb9bfbf52c0e33ca3a64b9e14ce6e7413930d8fd39c6e4e29239452cf1fb04"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.17.0/alint-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b20f1337a28ab7d260f6e6b32de7f18c23e7d6edb71dd0618ed922a9f14ac49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.17.0/alint-v0.17.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f8acc1c30cb8959bce53d4a23d77906935cc679ef13c855297c3e39bd464504"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.17.0/alint-v0.17.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aae46539226955795bc7c51adf4832d2503bf7419f87ad0ac15185092d42708a"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
