class FindTheGaps < Formula
  desc "Find documentation gaps between a codebase and its docs site"
  homepage "https://github.com/sandgardenhq/find-the-gaps"
  version "0.9.0"
  license "MIT"

  depends_on "hugo"
  depends_on "sandgardenhq/tap/mdfetch"

  on_macos do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.0/find-the-gaps_v0.9.0_darwin-arm64.tar.gz"
      sha256 "080471574cf90bd8df42be4120d912fcaa743815bb33bb55f12bde3786d52f8d"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.0/find-the-gaps_v0.9.0_darwin-amd64.tar.gz"
      sha256 "b2f142aa3da2586f02fb9677cc8345c8331b2c1c6237484ec6685ea5207a41ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.0/find-the-gaps_v0.9.0_linux-arm64.tar.gz"
      sha256 "3ec407f21c3bc63896b652ccb92b797326820900423d762b151631001c97cd06"
    end
    on_intel do
      url "https://github.com/sandgardenhq/find-the-gaps/releases/download/v0.9.0/find-the-gaps_v0.9.0_linux-amd64.tar.gz"
      sha256 "6650dbc32b353972d95356c22324c1f0ef47325926de8fd2f8022d6d899b1a26"
    end
  end

  def install
    bin.install "ftg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ftg --version")
  end
end
