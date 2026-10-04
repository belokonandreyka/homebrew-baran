class Baran < Formula
  desc "Host-side companion of the Baran iOS terminal: QR pairing and push"
  homepage "https://github.com/belokonandreyka/baran-host"
  url "https://github.com/belokonandreyka/baran-host.git",
      tag:      "v0.2.1",
      revision: "e91987e4bb1c64a138bdd99935c6a3b7dc3d06e0"
  license "MIT"
  head "https://github.com/belokonandreyka/baran-host.git", branch: "main"

  def install
    libexec.install "libexec", "bin", "extensions"
    bin.install_symlink libexec/"bin/baran"
  end

  test do
    assert_match "baran pair", shell_output("#{bin}/baran --help")
    assert_match "baran 0.2", shell_output("#{bin}/baran --version")
  end
end
