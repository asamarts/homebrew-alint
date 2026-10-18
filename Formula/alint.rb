class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.19.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.19.0/alint-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1c62f89bc42e928cb1b5d23b10b406d68cddb14a72842fbb4bf137d0521f38a"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.19.0/alint-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "362b03e4f0d2157526492de40cb54595072126e79773c93baaf7015c569f7840"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.19.0/alint-v0.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60dbc0cab088de8cc8706303f50fcc63aaa4bf17a5aa7b4e9d9f8ddaa20e322c"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.19.0/alint-v0.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "208fb1cc1efa06d0f7c7f36532a9af83dfac38649e05e15f85ea6c5ea7025c40"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
