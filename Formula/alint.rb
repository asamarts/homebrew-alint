class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.22.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.22.1/alint-v0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "f5c3ac8dd319dcb39a6b697eae95b0dc59079d819fe8d3d560f4eccbf193e609"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.22.1/alint-v0.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "f5b2248abd61d78ff4b68771629c1f220e8a05a46d586bf0596a74621c8103eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.22.1/alint-v0.22.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56164a05e0c798ff6ff551c232d92ebadaf732bd4371ac73bfc9e9a0cb98ac08"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.22.1/alint-v0.22.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be0fb8cfefb07b47fe7ee76d571ed9731d20037d3a421cdd9d285b01d79f9489"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
