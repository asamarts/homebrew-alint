class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.18.3"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.3/alint-v0.18.3-aarch64-apple-darwin.tar.gz"
      sha256 "52d3aa2db5ba264ce693a18a8678faa9e13e43153c942d45d451ae8f84850b1c"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.3/alint-v0.18.3-x86_64-apple-darwin.tar.gz"
      sha256 "22c2a58689dbfb81edced0c4968fab7b3bde42cf71cef7b295d44860b1d477ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.3/alint-v0.18.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d12d5184b14df060f13dafdc16c2783d70dfb8b19178f0c7868f34571ef4d1c8"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.3/alint-v0.18.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2306fa47b28422845e3c9aaef3892c92bfdad311ec973dd4c00ef2a3801a8e3d"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
