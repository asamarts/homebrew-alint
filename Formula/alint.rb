class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.5.8"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.8/alint-v0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "f7ccef0c45376d6fd333e33a6c7ed57ca56a35fc8c580006ef6c5bdf102e4744"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.8/alint-v0.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "50db8db621f7e935c9756f8f8617d03214ff26adf1343bb32d67db9d646eff6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.8/alint-v0.5.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c9416ec152fc338876a1e3dcf7da1117956c60c849169a3279d14e40f062e5c"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.8/alint-v0.5.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ec606f6a49662688ef2d2c0623c20a0887f2882fccb8d1c7429d146921ef473"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
