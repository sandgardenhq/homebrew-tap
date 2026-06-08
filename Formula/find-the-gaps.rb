class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.17.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.1/find-the-gaps_v0.17.1_darwin-arm64.tar.gz"
      sha256 "9248badce9a145d6c5b38f24665bce5ef7db92251c9ae867cfc62692cef57d5a"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.1/find-the-gaps_v0.17.1_darwin-amd64.tar.gz"
      sha256 "28ee3e02468ad094bc51b8a85c2c46ac246e4018ac31feb63e35ed637b197060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.1/find-the-gaps_v0.17.1_linux-arm64.tar.gz"
      sha256 "a9642694f3e31355e2f8d750e8e974b9aa8808f7a22be1c837076b267f819f17"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.1/find-the-gaps_v0.17.1_linux-amd64.tar.gz"
      sha256 "f703c79113fe9827688bdb5e3573e1ae12146ed727b9c33f1bd0d23dceeecacc"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
