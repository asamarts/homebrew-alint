class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.6.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.6.0/alint-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a1d13a7468ba805b97c3f04533734070a0096d8713c06d2392028f96db15095"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.6.0/alint-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1097301420b8d7cf5991d1acf2f0ea5089802a95633f7d5a7894c43f90d8a837"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.6.0/alint-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b3da448c65af12d367aa5c30da7e8e79a9a8e836552b6c6d00b9a0cb0df001c"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.6.0/alint-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e6950d5ae191728a31839c12ec579032c5883ac2f4c0f9aa3af6065df3732d8"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
