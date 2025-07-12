class Statusbar < Formula
  desc "Minimal macOS status bar app with CLI"
  homepage "https://github.com/nikitamuravitski/homebrew-statusbar"
  url "https://github.com/nikitamuravitski/homebrew-statusbar/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0dd754b39e8091e64a3cf6b29ee1b56db0f965b1f7a7323c8158c1910f826d53"
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
