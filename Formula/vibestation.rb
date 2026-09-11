# The three lines the release workflow rewrites are url, sha256 and version;
# everything else is edited here by hand. See the Release workflow in
# antondudakov/vibestation.
class Vibestation < Formula
  desc "One picker for your tmux sessions and git projects"
  homepage "https://github.com/antondudakov/vibestation"
  url "https://github.com/antondudakov/vibestation/releases/download/v0.1.0/vibestation-macos"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "0.1.0"
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
