#!/usr/bin/env zsh
set -euo pipefail

SCRIPT_DIR="${0:A:h}"

# ── Packages ──────────────────────────────────────────────────────────────────

cli=(
  ag
  bat
  bottom
  broot
  ca-certificates
  cheat
  choose
  cmake
  cmake-docs
  coreutils
  curl
  curlie
  delta
  docker-compose
  dog
  droid
  duf
  dust
  exa
  exiftool
  fd
  ffmpeg
  fish
  fmt
  fzf
  gcc
  gemini-cli
  gh
  git
  git-lfs
  git-smart-checkout
  glances
  go
  gping
  httpie
  hyperfine
  img2pdf
  jq
  lsd
  make
  mcfly
  mise
  neofetch
  neonctl
  nushell
  nvim
  onefetch
  opencode
  podman
  postgresql
  processspy
  procs
  qpdf
  ripgrep
  rustup-init
  sd
  sqlite
  sq
  starship
  stripe
  tldr
  tmux
  usage
  vf
  wthrr
  x264
  x265
  xh
  yt-dlp
  zoxide
)

casks=(
  anythingllm
  brave-browser
  claude-code
  ghostty
  gitbutler
  jan
  lm-studio
  notion
  obs
  obsidian
  opencode-desktop
  retroarch
  tradingview
  typora
  vlc
  wezterm
  zed
)

fonts=(
  font-fira-code-nerd-font
  font-fira-mono-nerd-font
  font-hack-nerd-font
  font-jetbrains-mono-nerd-font
  font-noto-sans-symbols-2
)

# ── Install ───────────────────────────────────────────────────────────────────

echo "→ Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "→ Installing CLI tools..."
brew install $cli

echo "→ Installing cask apps..."
brew install --cask $casks

echo "→ Installing fonts..."
brew install --cask $fonts

echo "→ Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

echo "→ Copying dotfiles..."
"$SCRIPT_DIR/dotfiles.sh"

echo "→ Setting up mise runtimes..."
"$SCRIPT_DIR/mise-setup.sh"

