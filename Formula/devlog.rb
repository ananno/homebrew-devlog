# frozen_string_literal: true

class Devlog < Formula
  desc "AI-powered development log generator for git repositories"
  homepage "https://gitlab.com/aice/devlog"
  url "https://gitlab.com/aice/devlog/-/archive/v1.2.0/devlog-v1.2.0.tar.gz"
  sha256 "4c1f5e6c0d1372207df5a8726c96f670dffa52b01fdf0897caa05c9a202fffb4"
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
