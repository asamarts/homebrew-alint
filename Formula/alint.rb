class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.14"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.14/alint-v0.9.14-aarch64-apple-darwin.tar.gz"
      sha256 "a6d5b3233fb875fc1c9d4503eefee291892372ff68b17c5c1bf8f15ec56be2de"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.14/alint-v0.9.14-x86_64-apple-darwin.tar.gz"
      sha256 "65a1e006c3ce6a4c23d44ed8a8319d4c525e21c1184f8a09bd4f3c05fdd65530"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.14/alint-v0.9.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff6aa09ea5f3a16d26fb3e3e8b2e9a116ff45e3aa38381277f9d8e7c8ae937aa"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.14/alint-v0.9.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "636eb4dc190c83855464df71d7a8c322bd98d4c8168b16baf7884a4cf8b80e15"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
