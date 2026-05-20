class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.15.1"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.1/find-the-gaps_v0.15.1_darwin-arm64.tar.gz"
      sha256 "ca42084c49a459caa4d870f84ccf856e90fa53923650bdc57bf5f1c67b7b7370"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.1/find-the-gaps_v0.15.1_darwin-amd64.tar.gz"
      sha256 "89895eb0c908049b81ad54bd8cca13f40da6cba3dca7be3f4c943dd87bc3a072"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.1/find-the-gaps_v0.15.1_linux-arm64.tar.gz"
      sha256 "801696138a93dfdb062f19a63d1df1c72fcfa5d90d5ab71e81f232e5566f8506"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.15.1/find-the-gaps_v0.15.1_linux-amd64.tar.gz"
      sha256 "39ecbafb467f24d256f69b405ade0d4a431eec5682a7d6935ec0ecd83ca9fc44"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
