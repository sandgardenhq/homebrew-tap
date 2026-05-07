class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.6.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.6.0/find-the-gaps_v0.6.0_darwin-arm64.tar.gz"
      sha256 "71dc42c3ca053029f1ceab45b70574f27fcb75fae5e8f1e5dce130e9e07396bd"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.6.0/find-the-gaps_v0.6.0_darwin-amd64.tar.gz"
      sha256 "658d53bb2ce57567a926d5691bb44c2205085d71795c93a1994a4de2f52c1937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.6.0/find-the-gaps_v0.6.0_linux-arm64.tar.gz"
      sha256 "40028fccfee29bb9c230087bef888903382f0531d66261204ce265ac675d9a34"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.6.0/find-the-gaps_v0.6.0_linux-amd64.tar.gz"
      sha256 "eb24d981cd79e1f42b4f97131a3673544776cf0f2b6cb504747ee08c60eaddc5"
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
