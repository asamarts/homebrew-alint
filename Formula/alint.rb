class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.12"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.12/alint-v0.9.12-aarch64-apple-darwin.tar.gz"
      sha256 "defac54012f4ecdfd91a23127265b750c038ccdfd7648c59dcad802a2cdfea30"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.12/alint-v0.9.12-x86_64-apple-darwin.tar.gz"
      sha256 "c2bf738dc8aac7f6812a5a00147a78e5e70ae67b9e91bd345c8fab9c07b10efe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.12/alint-v0.9.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca3b05aeeafb705c21104bd91231939a2d24528c00b622b511fd6931134b9167"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.12/alint-v0.9.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7c8ff5aa1fb685ad1a15ac2691ad4e73e7309802b59af3f7d6ba72ff60b182e"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
