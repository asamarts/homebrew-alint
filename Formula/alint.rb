class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.9"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.9/alint-v0.9.9-aarch64-apple-darwin.tar.gz"
      sha256 "3655c7c43bf60e31dba4ab78e6fb69db7cdfd3c9dd7d51f52e3a695a92032099"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.9/alint-v0.9.9-x86_64-apple-darwin.tar.gz"
      sha256 "43ae4484706d4dcdacd91445231d9e9f1f34f89f5adbe58c46ac45b46e02a272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.9/alint-v0.9.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e04de5ee0ba2d46c03577b19323f2cc4d5c918d4f18a34767ce66072220af8d"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.9/alint-v0.9.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81024034efe5ee13c7cacd81f4f26238d7233d2b87ac680537f59ae39bc8f488"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
