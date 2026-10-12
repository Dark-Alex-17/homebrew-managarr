# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.1/managarr-macos-arm64.tar.gz"
    sha256 "2cff082660d20a0eb2d2179ddaf49ebec491e7055975abf001ad4951587b3939"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.1/managarr-macos.tar.gz"
    sha256 "128c382047c14223026474f6fc14800994bbef1579fc3a42c3ef9a1af034d81e"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.1/managarr-linux-musl.tar.gz"
    sha256 "2e570c5324e4f68c85a43b405dadf94da1020642221418135fdf3216fc8fb438"
  end
  version "0.8.1"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
