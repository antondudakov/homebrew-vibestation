# The three lines the release workflow rewrites are url, sha256 and version;
# everything else is edited here by hand. See the Release workflow in
# antondudakov/vibestation.
class Vibestation < Formula
  desc "One picker for your tmux sessions and git projects"
  homepage "https://github.com/antondudakov/vibestation"
  url "https://github.com/antondudakov/vibestation/releases/download/v1.6.1/vibestation-macos"
  sha256 "f28620b5bb310419cae5b3f37b2adf9950c7eb3bc21dd3f42a75fd0ed9485ecc"
  version "1.6.1"
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
