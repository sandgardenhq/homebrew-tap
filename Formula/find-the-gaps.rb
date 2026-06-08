class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.18.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.1/find-the-gaps_v0.18.1_darwin-arm64.tar.gz"
      sha256 "f63d78df8ba65ac2973bbed605cc5f6143b33e818abc528d455625c851255bf7"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.1/find-the-gaps_v0.18.1_darwin-amd64.tar.gz"
      sha256 "e37e072e165271fa36ef83383e74ffba0a44c41b27714c600bce810909d1d1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.1/find-the-gaps_v0.18.1_linux-arm64.tar.gz"
      sha256 "04bc6086a9039254b4bddd3cd59fa54d2c2df3a5976b91cfbffbf01e89f593a4"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.1/find-the-gaps_v0.18.1_linux-amd64.tar.gz"
      sha256 "2e523fb830fdd1685797faf1021539ea61088728c2311595ded5aeab17ceea15"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
