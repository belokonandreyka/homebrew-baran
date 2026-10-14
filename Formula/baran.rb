class Baran < Formula
  desc "Host-side companion of the Baran terminal: QR pairing and push"
  homepage "https://github.com/belokonandreyka/baran-host"
  url "https://github.com/belokonandreyka/baran-host.git",
      tag:      "v0.3.10",
      revision: "9f1b3e8bb56526e133e300c51cafbbcb7801bff0"
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
