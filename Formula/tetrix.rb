class Tetrix < Formula
  desc "CLI installer for Tetrix CE — AI-powered code understanding platform"
  homepage "https://github.com/well-prado/tetrix-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.1/tetrix_darwin_arm64.tar.gz"
      sha256 "610c6d8bbd81faa3b3930b545c26d862aa8842f748910347cfef9e15ca92d9de"
    end
    on_intel do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.1/tetrix_darwin_amd64.tar.gz"
      sha256 "60e9bb019eb8608536cfa06372aab9fd64ae4e1729c0fd86a35d92af6487c58b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.1/tetrix_linux_arm64.tar.gz"
      sha256 "0fa291f813ed9a652ed003ec89c73b94bb83214f3f26203e9c90de4ba74e6d1a"
    end
    on_intel do
      url "https://github.com/well-prado/tetrix-cli/releases/download/v0.1.1/tetrix_linux_amd64.tar.gz"
      sha256 "852e750ac4f19345f38e35402f0b5a7b0b694f5896346217466a2097d9967e0c"
    end
  end

  def install
    bin.install "tetrix"
  end

  test do
    system "#{bin}/tetrix", "version"
  end
end
