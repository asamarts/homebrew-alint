class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.16.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.16.1/alint-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "def639d9581520832096f0318b9f66204181679521b446da93a5d4875d5240e9"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.16.1/alint-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "ca3ee062610dc72d0823674aeae955fbec224d47e7146a67607790ea76a7be6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.16.1/alint-v0.16.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28b551c1ffef97dff497ea4c1ad29c69b0c97b9c81f5ab311e155e28375452ac"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.16.1/alint-v0.16.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81ce8785e99a65bfa6a2e5cad6451dc3cac8a5cbc404b4452ae453ea392acb05"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
