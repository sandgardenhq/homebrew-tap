class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.14.2"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.2/find-the-gaps_v0.14.2_darwin-arm64.tar.gz"
      sha256 "3c445608f87b43d5353fd027079be5e7ecbe77ab5bb83402b0af0fc73c2ee86c"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.2/find-the-gaps_v0.14.2_darwin-amd64.tar.gz"
      sha256 "db54fe60b84797db44136f6af478c7d3b64372d48a3964323bf24ee3d7ee5fd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.2/find-the-gaps_v0.14.2_linux-arm64.tar.gz"
      sha256 "9f0ce9489bb17cfd573d36ba903e6dc318980a0859994a6d82e0b0f7ffc64cee"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.2/find-the-gaps_v0.14.2_linux-amd64.tar.gz"
      sha256 "92c4b53a67cb2c395ac6664577a6f3d87c567a808abcc3723935a16b2b34508b"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
