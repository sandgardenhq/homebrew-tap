class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.9.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.1/find-the-gaps_v0.9.1_darwin-arm64.tar.gz"
      sha256 "d6f897f7b6be06b3c8c9ef4f9062a4430333b84de4b00c88a456f17c61486c4d"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.1/find-the-gaps_v0.9.1_darwin-amd64.tar.gz"
      sha256 "bc041e48365c1daf07a8ee9acb7a767b20600bdd4cc399af032002b5c362eb40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.1/find-the-gaps_v0.9.1_linux-arm64.tar.gz"
      sha256 "98e85b543dc2cddaf5e1f77627c1cbd873e1677488c6d1db869c438e51b4209f"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.1/find-the-gaps_v0.9.1_linux-amd64.tar.gz"
      sha256 "27a3983f10bdba996bab9ff26649ba2520ca1e862ded1c1e6663025d68dd7ae8"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
