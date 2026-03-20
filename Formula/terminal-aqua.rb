class TerminalAqua < Formula
  desc "Track your water intake from the terminal"
  homepage "https://github.com/torokdavid98/terminal_aqua"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/torokdavid98/terminal_aqua/releases/download/v0.1.1/aqua-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/torokdavid98/terminal_aqua/releases/download/v0.1.0/aqua-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/torokdavid98/terminal_aqua/releases/download/v0.1.0/aqua-aarch64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/torokdavid98/terminal_aqua/releases/download/v0.1.0/aqua-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "aqua"
  end

  test do
    assert_match "Track your water intake", shell_output("#{bin}/aqua --help")
  end
end
