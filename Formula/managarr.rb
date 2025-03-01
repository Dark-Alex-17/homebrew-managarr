# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Managarr < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/Dark-Alex-17/managarr"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.5.1/managarr-macos-arm64.tar.gz"
    sha256 "8e372b8f1e353aa56bdfabe97a6c85d46a866970def9733ba04f21151171f7fd"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.5.1/managarr-macos.tar.gz"
    sha256 "a4e1e89dd06adfaa455ecf69f115f23948a8d9d3af8a02850bce3f565dab4625"
  else
    url "https://github.com/Dark-Alex-17/managarr/releases/download/v0.5.1/managarr-linux-musl.tar.gz"
    sha256 "2437cea4467f89e935d7b07a87f33548732e0a701c34981a489a23defd3c222c"
  end
  version "0.5.1"
  license "MIT"

  def install
    bin.install "managarr"
    ohai "You're done!  Run with \"managarr\""
    ohai "For runtime flags, see \"managarr --help\""
  end
end
