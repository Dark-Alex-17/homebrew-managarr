# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.1/managarr-macos-arm64.tar.gz"
    sha256 "3b1897465d1e367142c1ea9b32f616d909ebe64d096495db791156ec77e8c8d8"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.1/managarr-macos.tar.gz"
    sha256 "031a371dc7b9b641561820053af3296317894c0faa3f29b5b99c7748f547dde2"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.1/managarr-linux-musl.tar.gz"
    sha256 "732a8251d964a34810301af2386892f4af9b23f4c274859c8b8e415866dbd7b6"
  end
  version "0.6.1"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
