class Alint < Formula
  desc "Language-agnostic linter for repository structure and content"
  homepage "https://github.com/asamarts/alint"
  version "0.15.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.15.0/alint-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "baee3433df01b6cea35e105310edf9e38cec778ee072d1247b68ae221db8577b"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.15.0/alint-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9930dec179b57da395b36f512ce179b2145505549a32183343301ad602a3e99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asamarts/alint/releases/download/v0.15.0/alint-v0.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21b3d23524eab87c96dc3c7478217e278150c0fd849c9278b6379ad2505490c5"
    else
      url "https://github.com/asamarts/alint/releases/download/v0.15.0/alint-v0.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65ec35457d9c2f3240f544795161241e324b04a0cc43749b1bf3fe9ebea905c5"
    end
  end

  def install
    bin.install "alint"
  end

  test do
    assert_match(/alint \d+\.\d+\.\d+/, shell_output("#{bin}/alint --version"))
  end
end
