class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.5.10"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.10/alint-v0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "9440928d41b2b357e8b59c1d028415b45744318079d284ea84c3743afd75e1bd"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.10/alint-v0.5.10-x86_64-apple-darwin.tar.gz"
      sha256 "db28e9f1c0b61d5353fbbe23505e8429e55794ad56a8bb739bf684af1294a46d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.10/alint-v0.5.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bccec484e6a07bdbecf315430fd02f4fc1cf928640ed1a5578017573d0986118"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.10/alint-v0.5.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed49e48efd55dae6947e6f5c04fb1bbaddd69000e7a404d55731d86b28ab7130"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
