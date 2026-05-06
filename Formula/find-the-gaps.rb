class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.5.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.0/find-the-gaps_v0.5.0_darwin-arm64.tar.gz"
      sha256 "f7d6b1a8b7f5ab82afd08d097e11eddc648bc6562edce17d3ba2d80b6eff59e2"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.0/find-the-gaps_v0.5.0_darwin-amd64.tar.gz"
      sha256 "5d446e86556c7ea3c1eac59cc07f9402a97a7ea75fb4442dc8d5974899dfdd70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.0/find-the-gaps_v0.5.0_linux-arm64.tar.gz"
      sha256 "9f08fc8ff78fe4f0b3341bf2425364d85f4d9768d2b7aaf8fb8dd2cd5d408c69"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.5.0/find-the-gaps_v0.5.0_linux-amd64.tar.gz"
      sha256 "b1c72b8593357e72953b347e8eaf32566c3b726656058b6229182bf73505bf88"
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
