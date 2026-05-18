class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.14.4"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.4/find-the-gaps_v0.14.4_darwin-arm64.tar.gz"
      sha256 "a74f71811fa7e97831748b5bc15550f62dd629e1cd867bf591fa5a7bccf78c05"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.4/find-the-gaps_v0.14.4_darwin-amd64.tar.gz"
      sha256 "db069fa3d49b09649a5607bfdd025701afeb08b570c7a18b5d5c49422821b52c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.4/find-the-gaps_v0.14.4_linux-arm64.tar.gz"
      sha256 "2163b0a8e43f2a6a4baf45aa5b3e4231dd089ab7e49983ce26264b5ba1e30195"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.4/find-the-gaps_v0.14.4_linux-amd64.tar.gz"
      sha256 "f9f21ebc1b4687658f2c2a68f27d363aa54881f879abb6432549f7124a45eee2"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
