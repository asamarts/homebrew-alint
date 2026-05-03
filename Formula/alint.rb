class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.11"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.11/alint-v0.9.11-aarch64-apple-darwin.tar.gz"
      sha256 "00fc7e23e23603ae397b0dab369a086c0393663b94a9caa14e3cbf4098317b0b"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.11/alint-v0.9.11-x86_64-apple-darwin.tar.gz"
      sha256 "435a13358fe1893283e7456d1b16a818e669742d5f79d9e446f87334a0b5a4b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.11/alint-v0.9.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "55d0b93563fdad8466d2347bc07c93c0fe6a6d23655cf22745666843d23967dd"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.11/alint-v0.9.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "56bcce0f6956ad5fbc2e1fb4a2050613254f54c56d4ddc54bf0e1dab5fb259dc"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
