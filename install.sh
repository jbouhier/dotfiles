#!/usr/bin/env bash
# Bootstrap these dotfiles on a fresh machine.
#
# Packages are NOT listed here -- they live in the tracked Brewfile and are
# installed by chezmoi's run_onchange script on first apply. To refresh that
# list from a machine, run ./scripts/refresh-brewfile.sh

set -euo pipefail

REPO="${DOTFILES_REPO:-git@github.com:jbouhier/dotfiles.git}"
DEST="${DOTFILES_DIR:-$HOME/Projects/dotfiles}"

# ── 1. Homebrew (macOS) ───────────────────────────────────────────────────────
if [ "$(uname -s)" = "Darwin" ] && ! command -v brew >/dev/null 2>&1; then
    echo "→ Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ── 2. chezmoi ────────────────────────────────────────────────────────────────
if ! command -v chezmoi >/dev/null 2>&1; then
    echo "→ Installing chezmoi..."
    if command -v brew >/dev/null 2>&1; then
        brew install chezmoi
    else
        sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
    fi
fi

# ── 3. Clone and point chezmoi at this repo ───────────────────────────────────
if [ ! -d "$DEST/.git" ]; then
    echo "→ Cloning dotfiles into $DEST..."
    git clone "$REPO" "$DEST"
fi

mkdir -p "$HOME/.config/chezmoi"
printf 'sourceDir = "%s"\n' "$DEST" > "$HOME/.config/chezmoi/chezmoi.toml"

# ── 4. Apply (installs Brewfile packages on first run) ────────────────────────
echo "→ Applying dotfiles..."
chezmoi --source "$DEST" init --apply

cat <<'EOF'

✓ Done.

Secrets are stored in the macOS Keychain, not in this repo. If API-key
templates render empty, add them with:

  chezmoi secret keyring set --service=anthropic --user=api
  chezmoi secret keyring set --service=google    --user=gemini

EOF
