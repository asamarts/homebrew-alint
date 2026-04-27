class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.5.11"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.11/alint-v0.5.11-aarch64-apple-darwin.tar.gz"
      sha256 "cd053e59ade819ceff3eec911e9f84a1d353e374ad4c01be2ef90b45cb2db096"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.11/alint-v0.5.11-x86_64-apple-darwin.tar.gz"
      sha256 "be1c4ed3491213fe36d4a2376edc496b3bcf3144756402867040f1c2721f5039"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.5.11/alint-v0.5.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec1b6cbf736be5c1d1a390143bc2f2eed5aebbb3a378a8b7f715923d404dbf75"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.5.11/alint-v0.5.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e042b44051ed6e71e262f8b38ed87427713eceb7f48882b87fb93965f2fa2f2d"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
