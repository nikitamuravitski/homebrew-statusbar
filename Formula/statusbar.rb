class Statusbar < Formula
  desc "Minimal macOS status bar app with CLI"
  homepage "https://github.com/nikitamuravitski/homebrew-statusbar"
  url "https://github.com/nikitamuravitski/homebrew-statusbar/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
