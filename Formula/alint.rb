class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.5.9"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.9/alint-v0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "db9842e34282b8d0c276a102f68dec703bd1a7f5627dd6763adddb191d12cc9b"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.9/alint-v0.5.9-x86_64-apple-darwin.tar.gz"
      sha256 "88702e02684750253322c1629188e3ac60baf6edace5e7500ff4cb7307d09b42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.9/alint-v0.5.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37b8ee0bd0db5eeceba3359c803191f5aaf89ca2c484f5210afd4c9d5a8eaf4f"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.9/alint-v0.5.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e33291e79c916512224e2234be6f1fe2a1c91c9e735d49819ca75071fa17ed0"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
