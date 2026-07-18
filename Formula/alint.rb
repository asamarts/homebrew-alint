class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.14.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.14.0/alint-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "863a0220591409c061f3e6f35618fac07a49e43b8a0dc577b91f74de3207a044"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.14.0/alint-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "c8d871ba922a4dec81455f549308a170ef80ef6527bc7c1fb3b40da6570e64f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.14.0/alint-v0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3057b9c126b979e495f1ca8dfdfe7e7e388342e86266fd727376700ff912e0fb"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.14.0/alint-v0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db22093ba9eb4ab8957ec8240eefae33536f86be81f08613de5cc757636ff625"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
