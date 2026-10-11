class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.18.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.0/alint-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3ec4706db004cca06b2c887a91a4e96e07ba37aaa1bfbbeac819e9e01832fc5"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.0/alint-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "2eb182141fd618b060c08c2b06142a519a6edcaa21ed7d62fa4e18f8f1f5ba69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.18.0/alint-v0.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d2e36938a7aed06c7f6e327393a4254bd9f76712d2540472176645bd56d698a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.18.0/alint-v0.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02d702c6f406d5fe632fd5c73904d198489de8812c96bc47f258d123f58c84dd"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
