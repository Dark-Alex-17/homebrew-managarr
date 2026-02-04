# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.1/managarr-macos-arm64.tar.gz"
    sha256 "9ef07e449edb3f9dab46bf7ea925a93924f92af25eab897d30193514ac73f35c"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.1/managarr-macos.tar.gz"
    sha256 "bd8b7e4f58299301de23fbee050f18d9433e13bf52256018b9aaee1a2dede27e"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.1/managarr-linux-musl.tar.gz"
    sha256 "ed32d4b14958a927fd65ca38ef2a2104c80e88ca298321ecfcfbfdf1a8dfaacb"
  end
  version "0.7.1"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
