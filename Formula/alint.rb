class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.23.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.23.0/alint-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "133c38233149718a74ff90015d75312651ee13bc6ae6143863492ec8a3b90002"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.23.0/alint-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "737275573f2eaf4b39c4d5d334917c73e495125adf2eab7e45099278ad353108"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.23.0/alint-v0.23.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd3eef12f1a450d508f01e517db8d5c22df347b4d1453449522ec25ce551b136"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.23.0/alint-v0.23.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31963e2a5eb2a8bae5558a0cd168a021f03c905c67fba0b02cd8ecae664c7140"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
