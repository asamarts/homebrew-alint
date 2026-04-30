class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.3"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.3/alint-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "623d648ffae70f5c99eb7460fd5374e567a1fad8e15f79fb34b2be1ceb8e58db"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.3/alint-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "bd39ec1d073c6d31c67b5d6bcd59b5ff3985d8d62edc7f759b19481561298950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.3/alint-v0.9.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f25bc976a860af7b8605f694edb107e659dfd600c4e041c6d6930f9e40976126"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.3/alint-v0.9.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6e58c86083ce54007d935bc9f0a38af698645db80bd2df96b9d76dcc025c0b9"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
