# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.3/managarr-macos-arm64.tar.gz"
    sha256 "29f8022b7b28a84df54df6d30e7b37893add65c18b59d6b1ac9a239d211eb95d"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.3/managarr-macos.tar.gz"
    sha256 "75fc755d42f9065b39b8847da9e8a17e30666528c7e435eca8f791666e62db16"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.3/managarr-linux-musl.tar.gz"
    sha256 "27c2a5ab4b69c59c544629568e058387eeee31ed4b0048f058abbcde3ce1bcfd"
  end
  version "0.7.3"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
