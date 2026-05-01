class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.5"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.5/alint-v0.9.5-aarch64-apple-darwin.tar.gz"
      sha256 "aeda9fe31532f3a9b6cf7bf0039cd54a86a98fa35b1877d714c1c3fe66e32537"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.5/alint-v0.9.5-x86_64-apple-darwin.tar.gz"
      sha256 "a40798ba7b8e3e694638533937916b977b58769ca9c8c3fecdc9ccd8e7cc232f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.5/alint-v0.9.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f7177ee2810e1fdf8bee56549d13c7c388da3a1b81c93830b9dbdaee9c6bf10"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.5/alint-v0.9.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b6822af79d515e9a0f0ec74f8c77ce0886efe7e8f1bbd7218f415939abd809ef"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
