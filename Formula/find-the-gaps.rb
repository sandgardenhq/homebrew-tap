class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.2.0"
  license "MIT"

  depends_on "node"
  depends_on "hugo"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.2.0/find-the-gaps_v0.2.0_darwin-arm64.tar.gz"
      sha256 "3fc736c97777be29880f25c2c1ca4a81e78b1101391ef67562a517816b4d1bb7"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.2.0/find-the-gaps_v0.2.0_darwin-amd64.tar.gz"
      sha256 "f88c33ec771d1ad962d91b95574e5963142e3f663fba4a4174290abddb5d6f77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.2.0/find-the-gaps_v0.2.0_linux-arm64.tar.gz"
      sha256 "a0bbb281149419addb43357351a9d5cc1ed23c403e48779e55e0a8baa753b856"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.2.0/find-the-gaps_v0.2.0_linux-amd64.tar.gz"
      sha256 "f8902d069347242a9dc525a85ad7b2507af5a4fdd819c8392b47e9f2ad66c8a8"
    end
  end

  def install
    bin.install "ftg"
  end

  def post_install
    # system bin/"ftg", "install-deps"
    system "npm" "install" "-g" "@sandgarden/mdfetch@latest"
  end

  def caveats
    <<~EOS
      find-the-gaps shells out to two external tools, both installed during post_install:
        • mdfetch (npm package @sandgarden/mdfetch) — installed into Node's global prefix
        • hugo (Homebrew formula) — installed via `brew install hugo`
      `brew uninstall find-the-gaps` will NOT remove either. To clean up:
        npm uninstall -g @sandgarden/mdfetch
        brew uninstall hugo
      Verify with: ftg doctor
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
