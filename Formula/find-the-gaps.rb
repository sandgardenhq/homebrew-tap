class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.3.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.3.0/find-the-gaps_v0.3.0_darwin-arm64.tar.gz"
      sha256 "3fcdfc3bf9f036c00dc8a085728ce0f178fce05bb8a3ff10a323b7a55fb42cb5"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.3.0/find-the-gaps_v0.3.0_darwin-amd64.tar.gz"
      sha256 "039254f0da17869b593c6dd6ba964872aca820ce1b26f57d35dccf63f1e91a8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.3.0/find-the-gaps_v0.3.0_linux-arm64.tar.gz"
      sha256 "215e6b3ecd7a889f8340aeb2f38e17b26705d882b8758b465ab9e4ce40b29663"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.3.0/find-the-gaps_v0.3.0_linux-amd64.tar.gz"
      sha256 "49dae262a0b53725f20f3bd13d13fc86dcfe30e4e0b06f0d720d8790b0db1bac"
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
