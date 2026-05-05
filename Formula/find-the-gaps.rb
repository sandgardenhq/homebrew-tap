class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.4.2"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.2/find-the-gaps_v0.4.2_darwin-arm64.tar.gz"
      sha256 "be95b9ffab0448c3195b1b07ceb0c02f1a6024ee85f4b323f1fbaac3764d289f"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.2/find-the-gaps_v0.4.2_darwin-amd64.tar.gz"
      sha256 "2c3e6aadf1530dee3801ff14a0a38acf4f857d6bdbcfcdfcabe1423b2a53aef6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.2/find-the-gaps_v0.4.2_linux-arm64.tar.gz"
      sha256 "08af2915e2fd61b6bd939ccc70024aa87c7b43b1836ffa4e1386174c85f9056c"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.4.2/find-the-gaps_v0.4.2_linux-amd64.tar.gz"
      sha256 "9004683deebfec5fadbf5960f427f9ab525a1b9f556c07a12364d6f07d1cc236"
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
