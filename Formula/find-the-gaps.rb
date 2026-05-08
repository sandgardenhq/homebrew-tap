class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.10.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.10.0/find-the-gaps_v0.10.0_darwin-arm64.tar.gz"
      sha256 "78ed7cbe02f78ddd6f54a3e61c3ba872f06672359e0f8d6be3389ae56494a7c2"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.10.0/find-the-gaps_v0.10.0_darwin-amd64.tar.gz"
      sha256 "423ccbda8e402d2c96eeb49f4c3c5cb8cf6c017d89463d017b15a2569846eefc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.10.0/find-the-gaps_v0.10.0_linux-arm64.tar.gz"
      sha256 "9832d14252dae747194ca73fe1e764284342d022a52a51c171f7cab27c5c0235"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.10.0/find-the-gaps_v0.10.0_linux-amd64.tar.gz"
      sha256 "015de615efb61b072b82433e8791f8363bfbb6477de656aa3b3d04fcbfdaf6ef"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
