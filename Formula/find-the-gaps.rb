class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.18.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.0/find-the-gaps_v0.18.0_darwin-arm64.tar.gz"
      sha256 "734e3758930e40e75d6dcecbd43395431537c66b2c8d6562262e910803d6c21e"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.0/find-the-gaps_v0.18.0_darwin-amd64.tar.gz"
      sha256 "fe32c1ffe863135cf639be3108075de4147d034bfe49655d8d09331301027b15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.0/find-the-gaps_v0.18.0_linux-arm64.tar.gz"
      sha256 "a6b0be63d9a7ef6bb89c76768dce6593512ef32cd645e0da5e34f00205a86d41"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.18.0/find-the-gaps_v0.18.0_linux-amd64.tar.gz"
      sha256 "31e55042da2d28cef09d153cc089a4b69b66af6be61ebdedc1e0cbf9ea7ed8e6"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
