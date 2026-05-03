class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.8"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.8/alint-v0.9.8-aarch64-apple-darwin.tar.gz"
      sha256 "3383c2b326c3835e34d1ed73ba654b1dcfc61eb59bb168b953316c237df49ddf"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.8/alint-v0.9.8-x86_64-apple-darwin.tar.gz"
      sha256 "5a8cc7f6cf0e13de29f3d773108ea0958fe567ececd64157bfe456f592606f2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.8/alint-v0.9.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7a39042dfb57fe6e74d51fbc1a2d514f79f12a02ad5133aa6943e023946ab3d"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.8/alint-v0.9.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f45a5486c4e5299c32c1d3ac5b17754e1ba7ad2640543f706f6a997d899f31e3"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
