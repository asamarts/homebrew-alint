class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.18.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.1/alint-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "beb34003d125bfa2634707c9a910a5efaace4c3e5403b9db03a4b498faa3ed99"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.1/alint-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "362f20b55012de0a278a7ae336a4518373bcb58ad3f3ef8a5e3d7e948ee04cc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.1/alint-v0.18.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb8145b17e6602f4b19f8e1fb1913b9a69802431d9af1aafc396d7479855f83a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.1/alint-v0.18.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16a581df34221335cea39a50a369d28f8a0ac2d141c7f27184e8f3cad0dc593f"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
