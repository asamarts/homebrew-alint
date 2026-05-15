class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.22"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.22/alint-v0.9.22-aarch64-apple-darwin.tar.gz"
      sha256 "c11cba98a007e33d23ec94ba17e267e4a06f020a7d8e5131cd116d3d2414bc1a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.22/alint-v0.9.22-x86_64-apple-darwin.tar.gz"
      sha256 "416d138567ecebfb50849f0dbc0255376b8a856b2c152380be7de3cf185b0405"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.22/alint-v0.9.22-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1890c1216349cbf54992d4a5d92f7f8e1e31f06ba21ce4c911254e7c1dc5b1f3"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.22/alint-v0.9.22-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1d8b347679b7af77c318088e7282ac6be3a4591f6626b6d895d14c7b24126bf"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
