class Tetrix < Formula
  desc "CLI installer for Tetrix CE — AI-powered code understanding platform"
  homepage "https://github.com/well-prado/tetrix-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.2/tetrix_darwin_arm64.tar.gz"
      sha256 "0129b817370b10f7437ed976ce75d53b95d6259902a59c1a6b7ca7cb23ca46a2"
    end
    on_intel do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.2/tetrix_darwin_amd64.tar.gz"
      sha256 "c9763fb4591ae1c0793989a7db39441e814f5627835296688a33e425ab48cee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.2/tetrix_linux_arm64.tar.gz"
      sha256 "38e077cad51e7c1784e2f7d0faaed47b03e1e566a5577c0b7630fdf21d004f76"
    end
    on_intel do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.2/tetrix_linux_amd64.tar.gz"
      sha256 "c7c1ab0c939d3c6bc457da3e331fbb887c6a641ea66ad5ebddcbef42f8d3831a"
    end
  end

  def install
    bin.install "tetrix"
  end

  test do
    system "#{bin}/tetrix", "version"
  end
end
