class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.1.1"
  license "MIT"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.1.1/find-the-gaps_v0.1.1_darwin-arm64.tar.gz"
      sha256 "388003b0abbec3e45aa1bf1916e629efe66990a632f4a75ab31d25ed997c5afd"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.1.1/find-the-gaps_v0.1.1_darwin-amd64.tar.gz"
      sha256 "29b0cd5498825c4b4c3a67552bc2538cff80f4ead0a986c2ce38dcf836419234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.1.1/find-the-gaps_v0.1.1_linux-arm64.tar.gz"
      sha256 "1a65bfdea8ec471136bf4e321d9b412eb7664c221615ee7a9d8b74dd61ad32aa"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.1.1/find-the-gaps_v0.1.1_linux-amd64.tar.gz"
      sha256 "95f23932e526859f2748cdc949bcfff8973aed2e713904ab53ab1d23de9d4972"
    end
  end

  def install
    bin.install "ftg"
  end

  def post_install
    system bin/"ftg", "install-deps"
  end

  def caveats
    <<~EOS
      find-the-gaps also needs `mdfetch` (npm package @sandgarden/mdfetch).
      It was installed into Node's global prefix during post_install.
      `brew uninstall find-the-gaps` will NOT remove mdfetch — run
      `npm uninstall -g @sandgarden/mdfetch` if you want it gone.
      Verify with: ftg doctor
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
