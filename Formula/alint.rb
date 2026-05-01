class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.4"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.4/alint-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "cf2c5656f26e0ef20f3b4a2cb1fdff450bae2066353b5ec6c501d4ed83f7a0e7"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.4/alint-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "9f987a3a0c2182f52f94a25988c9e3d5fc6dbdedcc2ea6dd7c9ec06121d869ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.4/alint-v0.9.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c6d9fa56aff95bc3f8923a2202e4805cf53a68311b8604e7b604f671568fcd07"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.4/alint-v0.9.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1b066259ea45526593b0d86b689a334a2e6956996b7108bb30d3cd80a8605ce"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
