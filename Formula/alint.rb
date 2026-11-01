class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.21.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.21.0/alint-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "698ac7870c8ed4bdf18f36de9537ecadd140c70fe1bb4fa142c4a5951825ab96"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.21.0/alint-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "49c37929e5dbbf09f40cbf67a4e7be5d8b133355013389043b541d295284afe2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.21.0/alint-v0.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c72ed301a414d0aa27f6ecbae4da53eee8e219f2ad6ee5cd8d5edac72809c667"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.21.0/alint-v0.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33d8fe0463e2f5eaff7586c7748dac3e37ffabb41df0973d544be3d7ebe17ce0"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
