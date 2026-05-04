class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.13"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.13/alint-v0.9.13-aarch64-apple-darwin.tar.gz"
      sha256 "4aa56f0cfb692a7b8f3fde29b8d91128386a9a8936339a977507e052f93c8eaa"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.13/alint-v0.9.13-x86_64-apple-darwin.tar.gz"
      sha256 "43511c964eb344b07163cb9559c81a0554499f20bf1d1316b0bbf943ea6e3239"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.13/alint-v0.9.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f78d32ccdb1fed071df57fb19e3965ca4ea841b46b4958d385f5325cac540c8c"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.13/alint-v0.9.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5808836d5a6490ab8779b121ad76f04c287749458857c2ee8f47d4f8cfefffbf"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
