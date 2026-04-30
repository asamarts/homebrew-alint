class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.1/alint-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "61ba705ccd76b7ebb1d9aa0ebc78d4a71a571e179ce227386257170e9ba8fae6"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.1/alint-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "1ef6774e15436f0c4115f6072aa3481f7b8849159bb86ec1ee4efc63a7f26764"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.1/alint-v0.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5810f7d5111650b91ec0dbdaf80f758494c71cc0e6e1285c6d9cb52e1f8c2f82"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.1/alint-v0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b114afe9fbb2ea2ab27b3e905590c38f2a7c7ce52644b1f499ab104682fbf76"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
