class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.12.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.12.0/alint-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d4af7b666cbf2bccfbf1c8ac1b833fe4734392dc5bbb99354cbba20b66cd3fc"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.12.0/alint-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca56cd7ec60c34692b998089ae6613f31e2b9c813602dbc05058b8040409ecc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.12.0/alint-v0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "124d6d9cd3f1b7c881123862722e0f2e0daae71811902e0ba39de700a4ff1612"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.12.0/alint-v0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fb03b96741801fefdf8814683830f41b158c0c3dcbc805cb089c5002a224c74"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
