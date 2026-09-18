#!/usr/bin/env bash
# Regenerate the tracked Brewfile from THIS machine's installed Homebrew state.
#
# chezmoi does not enumerate packages itself -- `brew bundle dump` does.
# Run this after installing/removing brew packages, then commit the change.
# chezmoi's run_onchange install script picks it up automatically on other
# machines because its rendered hash changes with the Brewfile.

set -euo pipefail

repo="$(cd "$(dirname "$0")/.." && pwd)"
target="$repo/home/dot_config/homebrew/Brewfile"

tmp="$(mktemp -t Brewfile.XXXXXX)"
trap 'rm -f "$tmp"' EXIT

echo "→ Dumping installed Homebrew state..."
brew bundle dump --force --file="$tmp"

# Keep only portable package declarations; drop brew's describe-comments,
# VS Code extension entries and Go binaries so the file stays diff-friendly.
grep -E '^(tap|brew|cask|mas) ' "$tmp" > "$target"

echo "✓ Wrote $target"
printf '  taps: %s  formulae: %s  casks: %s\n' \
    "$(grep -c '^tap '  "$target")" \
    "$(grep -c '^brew ' "$target")" \
    "$(grep -c '^cask ' "$target")"

if ! git -C "$repo" diff --quiet -- "$target"; then
    echo
    echo "Changed packages:"
    git -C "$repo" diff --stat -- "$target"
    echo
    echo "Next: git -C \"$repo\" add dot_config/homebrew/Brewfile && git commit"
else
    echo "  (no change)"
fi
