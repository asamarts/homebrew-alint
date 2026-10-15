class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.18.4"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.4/alint-v0.18.4-aarch64-apple-darwin.tar.gz"
      sha256 "0750d51dc7c7fa4014fc0763df28bfb7c7a32024c595fc83913ca96cfa35eb99"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.4/alint-v0.18.4-x86_64-apple-darwin.tar.gz"
      sha256 "05006c741587bf2e631c2833531b5aed360cf044a9c1d3f576a71ff853f2e95b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.4/alint-v0.18.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2018f4016d0c93e39f4d1bd0e85147f48a0c27af44937359f399ba651dcb4e2"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.4/alint-v0.18.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b61387a0fae301e2ba132331ba0c2448226760ce16b71fdc4052d4ab1ca1d1c"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
