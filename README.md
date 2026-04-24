# homebrew-alint

Homebrew tap for [alint](https://github.com/asamarts/alint) — a
language-agnostic linter for repository structure and content.

## Install

```bash
brew tap asamarts/alint
brew install alint
```

On macOS (Apple Silicon + Intel) and Linuxbrew (x86_64 + aarch64)
the formula downloads the appropriate pre-built binary from the
alint [GitHub release assets](https://github.com/asamarts/alint/releases),
verifies its SHA-256, and installs it to the Homebrew cellar.

## Upgrading

```bash
brew update
brew upgrade alint
```

## How this tap stays in sync

The `Formula/alint.rb` is regenerated automatically by alint's
release workflow (see
[`ci/scripts/update-homebrew-formula.sh`](https://github.com/asamarts/alint/blob/main/ci/scripts/update-homebrew-formula.sh))
on every tagged release. Hand-edits land in the alint repo, not
here.

## License

The formula and this README are dual-licensed Apache-2.0 OR MIT,
matching alint itself.
