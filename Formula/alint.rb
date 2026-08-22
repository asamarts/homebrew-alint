class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.15.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.15.2/alint-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "6496585ede7b07d9aed3df321196c90725b48c6f41289c1c5a7fb28483426481"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.15.2/alint-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "ac5b5f28a873694986afaff9c1708f0fc92fddc7807f84f43810ae7b4d952e85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.15.2/alint-v0.15.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a452485095b0c62fc395eb226529f2b6be9afbf817e92e4bee30f46de824d9f7"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.15.2/alint-v0.15.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b67ef64d6461573e4a40c54cd543238cbbf8126d4161e3c4385ac60cf6920295"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
