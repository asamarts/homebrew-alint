class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.16.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.16.0/alint-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "f1447c78a9f2a74e5de23767034bbf0269a9f04bbcef0070cd0937f1ed86b6d2"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.16.0/alint-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "49b99307f0480cbc040b05aaf399b40e1de59f7e034c225e355e88d2b2800860"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.16.0/alint-v0.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c747c12e5b39b7c86867d631821c70539b95f16cdc3b7ef26681a3efcb3408a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.16.0/alint-v0.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e954fb4d704dbe77d26ad0e506503754744b6b9ae8419c3a4b52e7e48c532e44"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
