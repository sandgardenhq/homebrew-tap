class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.7.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.7.0/find-the-gaps_v0.7.0_darwin-arm64.tar.gz"
      sha256 "3a26b3fbc6a3c65a6881d936570dc2b7d92ec66e45c44e8b79335564d97fc866"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.7.0/find-the-gaps_v0.7.0_darwin-amd64.tar.gz"
      sha256 "ad74045a3889a03de2f98100620a7eb6d7a5ce19bf5c8cffd3abcbb7d61d374b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.7.0/find-the-gaps_v0.7.0_linux-arm64.tar.gz"
      sha256 "71b2ab7f4362ba87156bf815f5d83b2e4e5beb442050c55a7e39a2094d37895a"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.7.0/find-the-gaps_v0.7.0_linux-amd64.tar.gz"
      sha256 "8289074713d9fe446eef9d9f495e89104ddac6442dbd3e8157b7d90e3ee74255"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
