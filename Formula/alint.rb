class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.5.12"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.12/alint-v0.5.12-aarch64-apple-darwin.tar.gz"
      sha256 "8ee21f0aa9b5781a09d5660d903499d6374babaf89c6a51920a2f0fd217e1d82"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.12/alint-v0.5.12-x86_64-apple-darwin.tar.gz"
      sha256 "f8b800428bf38aafbd860cd8191702bbbc2e904902e92e9d051926b0b0ccdc26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.12/alint-v0.5.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8aa5001162a7bfffc30ed61a5671d28a97df7697d929919495c73bb0d959772d"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.12/alint-v0.5.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd402815551785fe314257ed63341cedf36149e2625a70bdd8ebc02da4009eaf"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
