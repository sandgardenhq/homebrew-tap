class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.14.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.0/find-the-gaps_v0.14.0_darwin-arm64.tar.gz"
      sha256 "929c2c082244b06d137cb05f1eceba6cdbb6fd1f78a73e57c4396ad28503a1c6"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.0/find-the-gaps_v0.14.0_darwin-amd64.tar.gz"
      sha256 "3972e7ae03870d1bd10dd496e12b80eb8d6b1b1186089b5f7de8376b8dc86fc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.0/find-the-gaps_v0.14.0_linux-arm64.tar.gz"
      sha256 "f1cacc17add755eed58077d544ba8098453fc26fdb05bca9d0a645638cd90e78"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.14.0/find-the-gaps_v0.14.0_linux-amd64.tar.gz"
      sha256 "998bb028ca2b87ddd6e17a79b01e54a677c96674a9ee35ad287a284c89bb8eb8"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
