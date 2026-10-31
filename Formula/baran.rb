class Baran < Formula
  desc "Host-side companion of the Baran terminal: QR pairing and push"
  homepage "https://github.com/belokonandreyka/baran-host"
  url "https://github.com/belokonandreyka/baran-host.git",
      tag:      "v0.3.17",
      revision: "a6acfb9ec8c1bdb0deecd7e2788f16390101c8d8"
  license "MIT"
  head "https://github.com/belokonandreyka/baran-host.git", branch: "main"

  def install
    libexec.install "libexec", "bin", "extensions"
    bin.install_symlink libexec/"bin/baran"
  end

  test do
    assert_match "baran pair", shell_output("#{bin}/baran --help")
    assert_match "baran 0.3", shell_output("#{bin}/baran --version")
  end
end
