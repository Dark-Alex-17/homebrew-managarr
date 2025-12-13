# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.3/managarr-macos-arm64.tar.gz"
    sha256 "82b997f1d5ad622a6f17aa6043a365b3de3804b1172689f13714040a37e0342e"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.3/managarr-macos.tar.gz"
    sha256 "af574cceb5b630f201fcf61afe8bbf740747aa6dd8ea7802ac4139389bf3c8b3"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.3/managarr-linux-musl.tar.gz"
    sha256 "4e3dbf267cc0a388e7f85089931582617c88dd9122d4b2844f3625ddede9bc2d"
  end
  version "0.6.3"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
