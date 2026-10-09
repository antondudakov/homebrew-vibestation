# The three lines the release workflow rewrites are url, sha256 and version;
# everything else is edited here by hand. See the Release workflow in
# antondudakov/vibestation.
class Vibestation < Formula
  desc "One picker for your tmux sessions and git projects"
  homepage "https://github.com/antondudakov/vibestation"
  url "https://github.com/antondudakov/vibestation/releases/download/v1.7.0/vibestation-macos"
  sha256 "e11466c36fb7f333f5745dc3a2ffe8658c9744e109bf78934fd6ef2a751caebf"
  version "1.7.0"
  license "MIT"

  # The bottle is a universal macOS binary; Linux installs the musl binary
  # straight from the release instead.
  depends_on :macos

  def install
    bin.install "vibestation-macos" => "vibestation"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibestation --version")
  end
end
