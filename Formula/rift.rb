class Rift < Formula
  desc "P2P localhost tunneling — your teammate's ports on your machine"
  homepage "https://github.com/n33levo/rift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/n33levo/rift/releases/download/v0.1.0/rift-aarch64-apple-darwin.tar.gz"
      sha256 "d38d85e3d67f6c52a35edf97214e5f34ff09bf03262976323ec8af696381a7d6"
    end
    on_intel do
      url "https://github.com/n33levo/rift/releases/download/v0.1.0/rift-x86_64-apple-darwin.tar.gz"
      sha256 "c96704571eb5e48c4052720249935fe13dc18d8ce63e22b293e4bacfdf372006"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/n33levo/rift/releases/download/v0.1.0/rift-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b483474fab438e1110bb40702fa5a1e46695583fd1a79051c1ef329bcd4ce15"
    end
    on_intel do
      url "https://github.com/n33levo/rift/releases/download/v0.1.0/rift-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52efea18a1c8b234fef4de8fe20eaae3ac93a4d23b249390f050a2e11dc9bf2a"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "rift", shell_output("#{bin}/rift --version")
  end
end
