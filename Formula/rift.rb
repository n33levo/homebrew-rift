class Rift < Formula
  desc "P2P localhost tunneling — your teammate's ports on your machine"
  homepage "https://github.com/n33levo/rift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/n33levo/rift/releases/download/v0.1.0/rift-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "324a776d488bf6ca4ddbb91119c7d83a306ca8d011028a6927f80b94f8f3599d"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "rift", shell_output("#{bin}/rift --version")
  end
end
