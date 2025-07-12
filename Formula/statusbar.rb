class Statusbar < Formula
  desc "Minimal macOS status bar app with CLI"
  homepage "https://github.com/nikitamuravitski/homebrew-statusbar"
  url "https://github.com/nikitamuravitski/status-bar-extention/archive/refs/tags/v1.0.10.tar.gz"
  sha256 "69c1b656385cef22fbc2e1cb49258c5905fffffec561b9321c262d24ee619611"
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
