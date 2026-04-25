class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.4.8"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.8/alint-v0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "8f9f16e5446bc49c6a4d3345ddc25cc37492dd4705ca657851db9bad28b04335"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.8/alint-v0.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "cdb35140e2f2ea4a29fff110f733d07a9ccee8ee4b01745e418b852f2fbb9f1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.8/alint-v0.4.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41b2ca6233b56fbb621cebebcc28442dcfb9c2f68f836208e0735e462c3923dd"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.8/alint-v0.4.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5610ba4ac78fe4df8d0216b82e9a2e4802b65ad7a53161d4ac864d1994ef23d0"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
