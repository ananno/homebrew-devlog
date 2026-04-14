# frozen_string_literal: true

class Devlog < Formula
  desc "AI-powered development log generator for git repositories"
  homepage "https://gitlab.com/ananno/devlog"
  url "https://gitlab.com/ananno/devlog/-/archive/v2.0.3/devlog-v2.0.3.tar.gz"
  sha256 "c31207d668982d20433eb404fb40ab90d84291436460ab53247ff20c61b38f15"
  version "2.0.3"
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
