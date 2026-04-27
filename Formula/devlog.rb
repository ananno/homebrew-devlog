# frozen_string_literal: true

class Devlog < Formula
  desc "AI-powered development log generator for git repositories"
  homepage "https://gitlab.com/ananno/devlog"
  url "https://gitlab.com/ananno/devlog/-/archive/v2.1.0/devlog-v2.1.0.tar.gz"
  sha256 "bbcbe1fe4ab4c4dbdbf150185fbb58cd27ba40581892461dee9fda546ae67f7b"
  version "2.1.0"
  license "MIT"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build
  depends_on "libgit2"
  depends_on "openssl@3"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devlog --version")
  end
end
