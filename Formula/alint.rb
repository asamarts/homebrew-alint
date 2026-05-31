class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.11.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.11.1/alint-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "6bb18519c320fb54db9349f630a50c160163078dded28799217f927262304e52"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.11.1/alint-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "c5f4a29ac3a9cb7b968f74036abb093e99a8e01d4a63b487d78b6ee522c515e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.11.1/alint-v0.11.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8e0e5a18d65d5e065d0d22f240711c517fb40552a6927d0cd3298ea792263fb"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.11.1/alint-v0.11.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b395cfd567bbe384838eaf08c36c44826f8b828179e5c53036b6f39e75769250"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
