class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.2/alint-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "68a7935d9a82d7ea114e6c8536dd1b4f2f25c38b4a62735828b6272566a2f7ad"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.2/alint-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "ac9550a879e4d0f102b44f2bc42f27501221427f2baa0f526897b1b6370bc400"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.2/alint-v0.9.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1e120a2180600ea1b2acfe75bb0ca42d92cb4a856bf486759dce21254f1c73e"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.2/alint-v0.9.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ab726e0735f336d5c974591985afba8e581c1c9cb7d88669bf88efef59eebaf"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
