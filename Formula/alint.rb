class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.6"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.6/alint-v0.9.6-aarch64-apple-darwin.tar.gz"
      sha256 "90ec328bb05f386d89a24d87ec31bdaa47986e1448a9aff3732921140185ad9c"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.6/alint-v0.9.6-x86_64-apple-darwin.tar.gz"
      sha256 "b12f2f7aa26d2807408c685a19a89f66b59658b83bfaaa89bdfe1d37932d10af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.6/alint-v0.9.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "410677ca842ea2c7f8c32363b4884c3bd45eab34e45e61c94aae3c10eff3c589"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.6/alint-v0.9.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "769f7eec2adf64b206fe272f4dce24483a3af5508bf736b9198a01d51c901291"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
