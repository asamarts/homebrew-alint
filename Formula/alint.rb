class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.19"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.19/alint-v0.9.19-aarch64-apple-darwin.tar.gz"
      sha256 "430d9e7f06bd77a50473979b8b9a6f1e99ace1c2816d072b4765c4d2b9bc2b6a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.19/alint-v0.9.19-x86_64-apple-darwin.tar.gz"
      sha256 "6e79187e0f8e7a34c4e3524fa92418cc91c641bb8105e4b4a97d904b2e09aa4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.19/alint-v0.9.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2444b168b69f6395a2c2f9412c691b0a88675b516790251aa850422ac30ff915"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.19/alint-v0.9.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "097e2efc37806204b1450c0d2dd398c86e95f17649aa3d7e6aa0a81d840f009f"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
