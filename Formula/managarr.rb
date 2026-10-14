# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.2/managarr-macos-arm64.tar.gz"
    sha256 "ca6d5df79ed9f376d4cb63226885d0c0fc689ebe111f36af2af38a688fc3d26d"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.2/managarr-macos.tar.gz"
    sha256 "e7af33fef9788b320b4a2a1bac53876671fdf0af546010daa0447f721c413385"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.2/managarr-linux-musl.tar.gz"
    sha256 "ffffea06da2bfac27d3d66d8ebe6cbc588472e5a4d332b6fd383d7fe87050cce"
  end
  version "0.8.2"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
