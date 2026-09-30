# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.0/managarr-macos-arm64.tar.gz"
    sha256 "b86a1b06c22ef3bc6bef6521ad04d3340340c49b6b1f52cff61d1b851c0c5dc9"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.0/managarr-macos.tar.gz"
    sha256 "3ed463e230692856b48e40096794f15972974d222ab633e679620ee4fe5c2c48"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.8.0/managarr-linux-musl.tar.gz"
    sha256 "c07c5d7e2fa8bbd810a8816c1d5020a5a2ee0b75a54ec9f83e9f29f8baa1b72e"
  end
  version "0.8.0"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
