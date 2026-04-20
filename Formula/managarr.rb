# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.2/managarr-macos-arm64.tar.gz"
    sha256 "8783f95c74ab19fa0dcb601383e0c38373a444f17905b234be23de7fcb969b19"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.2/managarr-macos.tar.gz"
    sha256 "01c45c78f8684fbd409d89042cf0cb132a871fa4c1b16c818192bf80e29b0839"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.2/managarr-linux-musl.tar.gz"
    sha256 "b09e114a82968a25278ba7d96b43a3db80e699bb4ef70bf510ef9270bb64faea"
  end
  version "0.7.2"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
