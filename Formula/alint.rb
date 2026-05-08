class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.9.18"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.18/alint-v0.9.18-aarch64-apple-darwin.tar.gz"
      sha256 "fd96f3a269b158309f85a14df30d65adca3da60e3a50dba57a4732d97aa3276e"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.18/alint-v0.9.18-x86_64-apple-darwin.tar.gz"
      sha256 "7ea4a0c192b40bd8d65df3aef0122a28be2220d7c20f975a0d2f3ab6558e6760"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.9.18/alint-v0.9.18-aarch64-unknown-linux-musl.tar.gz"
      sha256 "137879b83f981962d711e5624016eedef485df0dc9473ba29460da65652d0e65"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.9.18/alint-v0.9.18-x86_64-unknown-linux-musl.tar.gz"
      sha256 "177d43f7b9fc0e7f286a46c21fbd2158e5cdf1cacf686b23629477398a8cea3e"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
