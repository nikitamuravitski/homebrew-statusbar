class Statusbar < Formula
  desc "Minimal macOS status bar app with CLI"
  homepage "https://github.com/nikitamuravitski/homebrew-statusbar"
  url "https://github.com/nikitamuravitski/status-bar-extention/archive/refs/tags/v1.0.9.tar.gz"
  sha256 "36b175b91b88cabb26fc520515ad4944d97c19f56013a85b364b995475b88999"
  license "MIT"

  depends_on :macos
  depends_on "swift" => :build

  def install
    system "./build.sh"
    bin.install "bin/statusbar"
    bin.install "bin/statusbar-bin"
  end

  test do
    system "#{bin}/statusbar", "--help"
  end
end
