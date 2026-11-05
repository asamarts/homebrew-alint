class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.21.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.21.1/alint-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "cdd02200a144aad877a95c5749b120608c87c0c1f4d35729f086374ef1af2039"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.21.1/alint-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "6d07f4262cc7ab9315e64cefa399003b924c13f50545a524ad557d65cf9f70b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.21.1/alint-v0.21.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02b92f34efa79bb9082247fe173874a77867d3af5136728e53df772b504ccc6b"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.21.1/alint-v0.21.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b9c9654dfd6b154037236d75c3504c5bb2290562bb05a324511e11556f22125"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
