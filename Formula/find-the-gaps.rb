class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.14.3"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.3/find-the-gaps_v0.14.3_darwin-arm64.tar.gz"
      sha256 "d59948b19d5a2726e628a8b5fc0a93baa29ebfc8fc04cc953241ea385b84755b"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.3/find-the-gaps_v0.14.3_darwin-amd64.tar.gz"
      sha256 "184783da201e58c5d4564f90e13639f2b2258c276dee37b5d519be079b2317f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.3/find-the-gaps_v0.14.3_linux-arm64.tar.gz"
      sha256 "1d7e5c13bf275ed37686d1b8d7fb14076d810521945e1934c60c1b974138ca1f"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.3/find-the-gaps_v0.14.3_linux-amd64.tar.gz"
      sha256 "af3447ff9849d616144ef3959021a3f04ea3575382f5d8df12924ea220403c8f"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
