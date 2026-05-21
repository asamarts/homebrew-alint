class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.10.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.10.2/alint-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "af8aecce6b02cd691e2fb3aba87fa777e15ce52b2f580d45c6b165c614218e73"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.10.2/alint-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "09df821d11d6369d77fcde7a16bb17be2a1fc37a75a6c5558b72042dfacebbc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.10.2/alint-v0.10.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "342aefe51568e5378e040b14e8f610f76bef56d8fda1d5b97dfcc9a54e526f62"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.10.2/alint-v0.10.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df23e0151edb1f9bc73dc35ced70622a65a0e53c9847d7fd27478363bdee9519"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
