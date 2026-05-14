class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.14.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.1/find-the-gaps_v0.14.1_darwin-arm64.tar.gz"
      sha256 "64e716f9e3e7d782fd4de41bff9511ace457e184971f172b214c11859e61face"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.1/find-the-gaps_v0.14.1_darwin-amd64.tar.gz"
      sha256 "5507c048dbffa1e31f5ed3a75f4d00d1f5659618579ded2334b9e1c6b7a28779"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.1/find-the-gaps_v0.14.1_linux-arm64.tar.gz"
      sha256 "bf06f90089b68f9672da4173821dc21cd0398dea5f332eb14aef1b52f2ef52f1"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.1/find-the-gaps_v0.14.1_linux-amd64.tar.gz"
      sha256 "708f81070412b48adc7014c2323b4a43af06a471353975a4f24bc1660629b262"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
