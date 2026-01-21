# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.0/managarr-macos-arm64.tar.gz"
    sha256 "2b2a99a02f26addc4cc16345b1c29ddce569473b4934e7eb758a442d56967a69"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.0/managarr-macos.tar.gz"
    sha256 "f9855eda5cefeb37769d9ecdd19411cc80243f2ff702bc1dedab6801497d4f80"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.7.0/managarr-linux-musl.tar.gz"
    sha256 "eab302e15d877a20ab11e5e47c7d8dbe5b5a9683da7463fc00a2080cfc4b8ed1"
  end
  version "0.7.0"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
