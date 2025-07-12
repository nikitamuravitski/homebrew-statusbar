class Statusbar < Formula
  desc "Minimal macOS status bar app with CLI"
  homepage "https://github.com/nikitamuravitski/homebrew-statusbar"
  url "https://github.com/nikitamuravitski/status-bar-extention/archive/refs/tags/v1.0.11.tar.gz"
  sha256 "42799f2ce2088b700481d86eea496b3f95909402822d888ba3c20a46e5d1a82b"
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
