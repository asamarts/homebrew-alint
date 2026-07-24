class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.14.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.14.1/alint-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "4f302328332ff9932a3f65faf214e222d46696511e19a3485f7d39f2f55b6b4d"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.14.1/alint-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "e756ba60ea5d865bac606a518ffe8957da93def0334129cfa85b7a1fe0ca3386"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.14.1/alint-v0.14.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7fea929a4c788ea85f52cd81e3168ef54e87af86e79efe3485eb82ac8ed20164"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.14.1/alint-v0.14.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b310a0a7138cb847cf47dad759afd5ec7295cc4eee1a68cb167a83bcd5f961c4"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
