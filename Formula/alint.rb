class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.21"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.21/alint-v0.9.21-aarch64-apple-darwin.tar.gz"
      sha256 "d926555b77229f9a29896612a783d6a2877c8088bee4bbf5613eb19e9c495ae0"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.21/alint-v0.9.21-x86_64-apple-darwin.tar.gz"
      sha256 "7d46fe441e8ce1335ed1ff2efa584e0db2b8bcc6757cce0083a7c831ac14405d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.21/alint-v0.9.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f57025a86b1b2e8f12c3713aea558467968ec25211ee8693c918892c593168bb"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.21/alint-v0.9.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95a6a4f0481262de7b2eb1707bd9f44ae8ec2d9e1ac9659362435b8eb976f6d8"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
