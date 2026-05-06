class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.5.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.1/find-the-gaps_v0.5.1_darwin-arm64.tar.gz"
      sha256 "750e7db75a5891c5af28c0cf58157d9d82115f9a59ea556debaa80c061b7e0ef"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.1/find-the-gaps_v0.5.1_darwin-amd64.tar.gz"
      sha256 "c32a91873e377778b09dbe2fc072a4a9178bc7d0f536958eeceb1b8e5125feef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.1/find-the-gaps_v0.5.1_linux-arm64.tar.gz"
      sha256 "3fb2428dc7b55af97e2ec4ca8732026941fb161ceb467afa668f8aadd7721ee6"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.1/find-the-gaps_v0.5.1_linux-amd64.tar.gz"
      sha256 "4e196ad7c65e55b997d5bbb114611678d560e3682ce930af34ae3bd0070ad59f"
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
