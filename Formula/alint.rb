class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.4.7"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.7/alint-v0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "b1a9c5c70e9862ab5a76dd2fc173f2b33631122c0b9c3c31d4b8d4049ab13ea7"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.7/alint-v0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "51f6458be028aa1a645b315c60b71645a7b428ecc1c468334c59e697da8c008b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.4.7/alint-v0.4.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb709593a35cd802520f1972b541f4bd16491e7712a498a38632173b38d95cc6"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.4.7/alint-v0.4.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c69577e4d15b322bc9a04ab01ff6d185c3bcf2e3fa80dc657ef06c124c4c111e"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
