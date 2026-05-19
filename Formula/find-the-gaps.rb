class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.15.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.0/find-the-gaps_v0.15.0_darwin-arm64.tar.gz"
      sha256 "642f5f906e434cd99ff495360c57cfa7bfa8233ff9602d5480060ad253aadb52"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.0/find-the-gaps_v0.15.0_darwin-amd64.tar.gz"
      sha256 "d8a9bbf99af000d88e5f9a9a2e4192184961d298288d202352ed12ded7d831b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.0/find-the-gaps_v0.15.0_linux-arm64.tar.gz"
      sha256 "2b0e664c7fbc0cdf9355f55d443719258d041054cc6119aacfae5dcd28ac31d9"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.0/find-the-gaps_v0.15.0_linux-amd64.tar.gz"
      sha256 "bbd46790b07f5f5111fd963ca2b40615299568143195c831ae4f9604659ba8a8"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
