class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.15.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.15.1/alint-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "681c82ac56dc592b6b9939fcbaf5e431ba123f8481424cfaeb570ea70baf100d"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.15.1/alint-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "56f215fb421cbe22b094548f7123903336f5baf79ef29f94cc75b54746f7f9dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.15.1/alint-v0.15.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f709cb490da2aec5dd6b582f1d59aa0397b520a8a7e393275533b3d5da19f6e"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.15.1/alint-v0.15.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83bfc3437e62cdb2262f28329dfc024773c439828a27cc291eb0247ad9018cfb"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
