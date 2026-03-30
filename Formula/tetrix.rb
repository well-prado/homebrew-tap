class Tetrix < Formula
  desc "CLI installer for Tetrix CE — AI-powered code understanding platform"
  homepage "https://github.com/well-prado/tetrix-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.0/tetrix_darwin_arm64.tar.gz"
      sha256 "64b193c7618d266519f3d3470f536de05f3add1ddf1c86827ec3985bffd4dfc1"
    end
    on_intel do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.0/tetrix_darwin_amd64.tar.gz"
      sha256 "333da82455a51157afc750745fad078e3325784b3259335d1eeca5ef5fd846a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.0/tetrix_linux_arm64.tar.gz"
      sha256 "0e1d943908a717b17bfdf3d52290c3815db35bd11246c645e849425023cd31f2"
    end
    on_intel do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.0/tetrix_linux_amd64.tar.gz"
      sha256 "ff11844318f91a537ef2556e88ed52e9f394a170888be7506bc1641f6cb48f37"
    end
  end

  def install
    bin.install "tetrix"
  end

  test do
    system "#{bin}/tetrix", "version"
  end
end
