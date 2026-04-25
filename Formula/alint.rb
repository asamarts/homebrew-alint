class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.4.9"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.9/alint-v0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "a8017d943489bd8e4f75981eeeca5b26ec094966311e34053973bcbc04393495"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.9/alint-v0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "f9d24fb5bccbedefd47edf63506052dae844f7b3eab36cc2b6f36dee6bdc7401"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.9/alint-v0.4.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6989a9beda47874bf0abf515e19613e59ebb15b16c329759c92892acc8e9d9eb"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.9/alint-v0.4.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0b2a0959b1150894bee910f8e14c885aa7694a238bc1e04fcad780aff535354"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
