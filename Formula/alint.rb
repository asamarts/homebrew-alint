class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.10"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.10/alint-v0.9.10-aarch64-apple-darwin.tar.gz"
      sha256 "8372574843b6e241315f9c98d52b25829693d04d63873ecc20f34b4f9b4aa913"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.10/alint-v0.9.10-x86_64-apple-darwin.tar.gz"
      sha256 "892f4f1f5af46cdfb9cf66d8b50b0b32df8b744aae8b0ab226ab47784cdfd64c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.10/alint-v0.9.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb0c12334ddbd8dea41b031c5f1ce930e37e86f0a075feabe5a2001cd68495d3"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.10/alint-v0.9.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc408a1c124139a104257821fcf412488f22582ad4bfa30eb073e1a75af075e3"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
