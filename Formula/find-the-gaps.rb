class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.8.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.8.0/find-the-gaps_v0.8.0_darwin-arm64.tar.gz"
      sha256 "7428cacbcc7a099d15969f3c8728c15142ec606eebee6b4c98fa66f4114d625a"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.8.0/find-the-gaps_v0.8.0_darwin-amd64.tar.gz"
      sha256 "6380a7526fc07ab1dcf237aa5d987c157eb0ff1e38a0a633cd2885593c0e819d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.8.0/find-the-gaps_v0.8.0_linux-arm64.tar.gz"
      sha256 "1c6b561f362246f94460d317f744361240b35b99845e0fcf70add66ff2c81134"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.8.0/find-the-gaps_v0.8.0_linux-amd64.tar.gz"
      sha256 "993c8c3591f0cb04c899e50543476d6001aaa77af21e75ad03bdcabfbe4bf58b"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
