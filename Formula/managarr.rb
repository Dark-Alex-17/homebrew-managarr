# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "Managarr is a TUI and CLI to help you manage your HTPC (Home Theater PC)"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.2/managarr-macos-arm64.tar.gz"
    sha256 "4fd83672ff7a44ed59c6bfc405a0c0b178d9d39a2443bea82d543a9615e961fd"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.2/managarr-macos.tar.gz"
    sha256 "39a84887b31578f494e84813cf2f883eed74d536889e4f4a37a766432d40a98e"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.6.2/managarr-linux-musl.tar.gz"
    sha256 "929d9ce883af813a51c899f12eb6cc864484db6708315bdaeb82d085cc2247ec"
  end
  version "0.6.2"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
