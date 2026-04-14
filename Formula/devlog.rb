# frozen_string_literal: true

class Devlog < Formula
  desc "AI-powered development log generator for git repositories"
  homepage "https://gitlab.com/aice/devlog"
  url "https://gitlab.com/aice/devlog/-/archive/v1.1.2/devlog-v1.1.2.tar.gz"
  sha256 "5e9e86429673fc91d05a553da8a4795dc2e6acb25b48f974974918f816162847"
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
