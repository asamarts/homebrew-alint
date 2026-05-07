class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.17"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.17/alint-v0.9.17-aarch64-apple-darwin.tar.gz"
      sha256 "80f4a3c6f9dec03b15503f9f9eb019ef1960df0526dd730288252f8f57fd0a23"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.17/alint-v0.9.17-x86_64-apple-darwin.tar.gz"
      sha256 "915a8ac7594b1ce64e517624ff17c7da95d6082891ba4e33db6db2700c582eb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.17/alint-v0.9.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df1558da1585267b4f4d40e9edfb7b35816803c545da743c89e068f8cea8fe56"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.17/alint-v0.9.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89e707fcad87b7278812af723edf27101caf095106226d887e710fdebf6dcb2e"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
