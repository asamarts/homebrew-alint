class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.8.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.8.2/alint-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "38b4d129fb6b2147b9bc0d86b5a71e673b7dc082ca00c94da035745aae4f5239"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.8.2/alint-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "7a60931309589162dc3350798d716e8b3cab3ae822d51f0718b20493038a2bb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.8.2/alint-v0.8.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4c00d595c76b0cfa5e24dc0e67ac99a99cc142c29a025dc7d65038dbd4f26db"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.8.2/alint-v0.8.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e6e7f6eadf0a24c61a15e0473f3063a018f903ca04d6369ea6d0cf2f86ab08e"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
