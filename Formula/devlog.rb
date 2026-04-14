# frozen_string_literal: true

class Devlog < Formula
  desc "AI-powered development log generator for git repositories"
  homepage "https://gitlab.com/aice/devlog"
  url "https://gitlab.com/aice/devlog/-/archive/v2.0.1/devlog-v2.0.1.tar.gz"
  sha256 "cda95d301c5d33849a5561635be3a8383bfc904d40c9ec1549dafae9e37396f0"
  license "MIT"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build
  depends_on "libgit2"
  depends_on "openssl@3"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_equal version.to_s, `#{bin}/devlog --version`.chomp.split.last
  end
end
