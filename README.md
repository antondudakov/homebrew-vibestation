# homebrew-vibestation

The Homebrew tap for [vibestation](https://github.com/antondudakov/vibestation) —
one picker for your tmux sessions and git projects.

```sh
brew install antondudakov/vibestation/vibestation
```

macOS only: the formula installs the universal binary from the GitHub release.
On Linux, take `vibestation-x86_64-linux` from the same release.

`Formula/vibestation.rb` is bumped automatically by vibestation's release
workflow on every tag; the `url`, `sha256` and `version` lines are the ones it
rewrites.
