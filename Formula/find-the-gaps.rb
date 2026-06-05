class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.17.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.0/find-the-gaps_v0.17.0_darwin-arm64.tar.gz"
      sha256 "9890b2c26748a8c075833cb39e738eb49bdabb67c839b4253ec34784a5bded9f"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.0/find-the-gaps_v0.17.0_darwin-amd64.tar.gz"
      sha256 "36140742844ed625d8a5d7920a9682434bbf2425b5dce3dcc5981635aac6b91f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.0/find-the-gaps_v0.17.0_linux-arm64.tar.gz"
      sha256 "f9c453a4a5160fc12cd00a414cee292dc217d59b0586434ec7a81ccc4545be51"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.17.0/find-the-gaps_v0.17.0_linux-amd64.tar.gz"
      sha256 "a264c563855775cf1a03f0504394d775736a66b46294b9e6ef5568314bc9db3d"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
