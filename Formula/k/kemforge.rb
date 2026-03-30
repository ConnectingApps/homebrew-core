class Kemforge < Formula
  desc "Curl-compatible CLI tool with Post-Quantum Cryptography support"
  homepage "https://github.com/ConnectingApps/kemforge"
  url "https://github.com/ConnectingApps/kemforge/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "d840717cba084448b5cdad29adffdc950c7a5ee8f950ee590d951990d6bcc398"
  license "GPL-3.0-only"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kemforge --version")
    assert_match "Usage", shell_output("#{bin}/kemforge --help")
  end
end
