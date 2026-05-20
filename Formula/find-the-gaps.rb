class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.16.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.16.0/find-the-gaps_v0.16.0_darwin-arm64.tar.gz"
      sha256 "168f421534624c2717b354b60fc6cb03132c1e7ae07a168f38f33d12c1c17dc2"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.16.0/find-the-gaps_v0.16.0_darwin-amd64.tar.gz"
      sha256 "8a49e29dab8bb513e6d85d304836d998afb9a182a5c2be5dd765c118d60b3413"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.16.0/find-the-gaps_v0.16.0_linux-arm64.tar.gz"
      sha256 "172b078316ee91379cb2a8178200fc4fe4797cffbdd83145955f76ea5dbdb5a6"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.16.0/find-the-gaps_v0.16.0_linux-amd64.tar.gz"
      sha256 "97a3592cb6a0c7b4275aa189f3498fe1f6da521712dfdac0dc6e6d949c41e3b9"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
