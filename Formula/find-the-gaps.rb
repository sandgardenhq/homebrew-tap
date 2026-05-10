class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.12.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.12.0/find-the-gaps_v0.12.0_darwin-arm64.tar.gz"
      sha256 "e1355c6cf07e531a0923f90b5e8ed5e587b33f99fcc2edba482581559f042120"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.12.0/find-the-gaps_v0.12.0_darwin-amd64.tar.gz"
      sha256 "5f3afdd979a1e148c531e4c31a663de5d4321410bd34585363a985d01654e0c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.12.0/find-the-gaps_v0.12.0_linux-arm64.tar.gz"
      sha256 "55c83d60f2d0292a8ecc8011b6b82663a9d43126575874296e148f31ec959d88"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.12.0/find-the-gaps_v0.12.0_linux-amd64.tar.gz"
      sha256 "e9da5f9ecc2c45f5d33355424b574723744286e2bcfe21c6188fd5c6204a4ca5"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
