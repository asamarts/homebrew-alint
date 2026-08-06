class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.14.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.14.2/alint-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "807d3da260c9695396c3746ee66f38d8c8021887a431cd25c3b53d8ce8fbecd0"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.14.2/alint-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "50b73421086f32dee85b494fe151f283da82a4cac80283069f20c4ef19237197"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.14.2/alint-v0.14.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ede46eb86f4a8d18e8bf62c35062b92e05635f039c46dca645377c16cc99bb1"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.14.2/alint-v0.14.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6cb8c08e17a9985a6622c4ddc45a1cc80992b0e7d0809204e3686e38dee2eb1"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
