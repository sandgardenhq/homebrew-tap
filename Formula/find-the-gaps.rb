class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.4.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.1/find-the-gaps_v0.4.1_darwin-arm64.tar.gz"
      sha256 "71692209a1b687a1df9e9457d1231c77f6fb5f9016d01caa5127f4108e2caa64"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.1/find-the-gaps_v0.4.1_darwin-amd64.tar.gz"
      sha256 "7fa6f99546636b3c765ebfa910fb32dc1a2a3a984648ddb19f41958e418cdd7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.1/find-the-gaps_v0.4.1_linux-arm64.tar.gz"
      sha256 "348844316eab95464ab8e666c429754745239b13c629624d0c245f425122c408"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.1/find-the-gaps_v0.4.1_linux-amd64.tar.gz"
      sha256 "cc5f61b15e03b3df73be6d98d3192ce5bffa3687e9e3acf8c1baf70a38bd4f84"
    end
  end

  def install
    bin.install "ftg"
  end

  def caveats
    <<~EOS
      find-the-gaps shells out to two external tools, both installed as Homebrew dependencies:
        • mdfetch (sandgardenhq/tap/mdfetch)
        • hugo
      `brew uninstall find-the-gaps` will NOT remove either. To clean up:
        brew uninstall sandgardenhq/tap/mdfetch
        brew uninstall hugo
      Verify with: ftg doctor
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
