class CcFocus < Formula
  desc "macOS menu bar status indicator for Claude Code sessions"
  homepage "https://github.com/MattFlower/cc-focus"
  url "https://github.com/MattFlower/cc-focus/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5ad4a9acbaf23aa7921aa739c28e062d1cd6deafc2ae0e658be0cc538c0edae7"
  license "MIT"
  head "https://github.com/MattFlower/cc-focus.git", branch: "main"

  depends_on :macos

  def install
    system "swiftc", "cc-focus.swift", "-o", "cc-focus",
           "-framework", "AppKit", "-swift-version", "5", "-O"
    bin.install "cc-focus"
    bin.install "cc-focus-cli"
    pkgshare.install "cc-focus-hook.sh", "install-hooks.sh", "uninstall-hooks.sh"
    chmod 0755, pkgshare/"cc-focus-hook.sh"
  end

  service do
    run opt_bin/"cc-focus"
    keep_alive true
    process_type :interactive
  end

  def caveats
    <<~EOS
      Register Claude Code hooks (one-time):
        cc-focus-cli setup

      Start the menu bar indicator:
        brew services start cc-focus
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cc-focus-cli 2>&1", 1)
  end
end
