class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.11.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.11.0/find-the-gaps_v0.11.0_darwin-arm64.tar.gz"
      sha256 "69b3644daf0438d3f8bb442adb6c7760e23a26ba2e000e3703c6a5b9e6fbe936"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.11.0/find-the-gaps_v0.11.0_darwin-amd64.tar.gz"
      sha256 "ae8724d02aa4ae2ad0f82b1851f2023ef190809e870e57b111e93a21ed69e7c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.11.0/find-the-gaps_v0.11.0_linux-arm64.tar.gz"
      sha256 "0e19f2ad8d3639cf0f9e35fa2ddf482864d56f0b6e13121fce2fcfb92056d43c"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.11.0/find-the-gaps_v0.11.0_linux-amd64.tar.gz"
      sha256 "b6ef39a7e3ca060507f2802088ef7311cb2716fd33ad50932aa8729515802c3d"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
