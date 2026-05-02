class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.7"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.7/alint-v0.9.7-aarch64-apple-darwin.tar.gz"
      sha256 "b041ea311fdeddd81d61d21517d58b0eee1b278af3373c992a526fc452a97f72"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.7/alint-v0.9.7-x86_64-apple-darwin.tar.gz"
      sha256 "e845b94f8c0ced7870dffe9029f4cabb00a6963e21d85b805d95cf850583b834"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.7/alint-v0.9.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59b3dfdc53493135825182c93f612aa3e95fdf1447e605390efa1d35c61d5438"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.7/alint-v0.9.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c72d9fcac613bd47e88c9fc89ea20c3b0726185a5659a4b42090a082defc2efc"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
