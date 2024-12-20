# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.4.2/managarr-macos-arm64.tar.gz"
    sha256 "0281fcca4aa5ac8693b24abc5373a5ced584bb13c353e49834857b1d844eb34f"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.4.2/managarr-macos.tar.gz"
    sha256 "8876ee3950d259c6716167fc9d2b52199e6becba2584176b7c0572c48f784b22"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.4.2/managarr-linux-musl.tar.gz"
    sha256 "ab0d9a5368de8f3ad4d26a7504907f17cdc5166e0e48e1763a317d0160d95876"
  end
  version "0.4.2"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
