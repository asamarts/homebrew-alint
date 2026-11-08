class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.22.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.22.0/alint-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "abb75a466fc0e71071ed7040844e89b79e4c3a09615e2aca790da87f8af39042"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.22.0/alint-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "cfd527c47fd9a05b6ea2eeedaf5a44d7614bcb34534b11fdce1d89ad422f2b54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.22.0/alint-v0.22.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cba9756c5fc978ff0bd1b322bdf5456b7c512b0cdcb6c853c1fae8eafed73ca"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.22.0/alint-v0.22.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a751c1b4cac9b08ec1b784e4b1235bce136b484872f46ce9a59e2650222ae27b"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
