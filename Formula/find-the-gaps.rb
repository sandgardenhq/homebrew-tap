class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.13.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.13.0/find-the-gaps_v0.13.0_darwin-arm64.tar.gz"
      sha256 "cf08ad88e33441e6908e65df442958376be316e5518c94e9df8b75df394771cb"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.13.0/find-the-gaps_v0.13.0_darwin-amd64.tar.gz"
      sha256 "842c644ceb9659b50cf1a6e5fcc7a896555ec8eb22179fe8e7b0d929834335dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.13.0/find-the-gaps_v0.13.0_linux-arm64.tar.gz"
      sha256 "e905c86c7b75dbdbfb27831a4610160d135d45f2daece20daad70a7d0c8b8beb"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.13.0/find-the-gaps_v0.13.0_linux-amd64.tar.gz"
      sha256 "b99dc220a111a15d68d46bc0d9db7ce0d0a37755f399179cbd5f7024a39394e8"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
