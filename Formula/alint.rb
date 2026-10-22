class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.20.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.20.0/alint-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "c2955e609e1c5b6b4af2ca67f352c4a251ab3de76d673f71b02a44b9eb48258b"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.20.0/alint-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "0a7ecc18c3ceef76d9d210cc7a1aebf10a56a6c877b23fbe062481747ebb2031"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.20.0/alint-v0.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3276b011733dd4d23dc497f8f02869a4cc25abb81bdf735600e88c243dbb95d9"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.20.0/alint-v0.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "160e9415a00c8d83392d54ad6d002834df2874af8f372b012bc0496cb66afb28"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
