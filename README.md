# dotfiles

macOS development environment, managed with [chezmoi](https://chezmoi.io).

## Setup

```sh
git clone git@github.com:jbouhier/dotfiles.git ~/Projects/dotfiles
~/Projects/dotfiles/install.sh
```

`install.sh` installs Homebrew + chezmoi, points `sourceDir` at this repo, and
applies. Homebrew packages are installed from the tracked Brewfile by a chezmoi
`run_onchange` script on first apply.

## Layout

```
.chezmoiroot              # "home" — isolates source state from repo tooling
home/                     # the actual dotfiles (chezmoi source state)
  dot_zshrc               #   -> ~/.zshrc
  dot_config/ghostty/     #   -> ~/.config/ghostty/
  private_...             #   0600/0700 files
  *.tmpl                  #   rendered per machine / from Keychain
  .chezmoiscripts/        #   replaces manual install.sh package lists
  dot_config/homebrew/Brewfile
install.sh                # bootstrap for a fresh machine
scripts/refresh-brewfile.sh
vscode/                   # extension list + export/import helpers
```

## Secrets

No credentials are stored in this repo. `~/.zshenv` and the fish secrets file
are templates that pull from the macOS Keychain at apply time:

```sh
chezmoi secret keyring set --service=anthropic --user=api
chezmoi secret keyring set --service=google    --user=gemini
```

## Homebrew

Packages are declared in `home/dot_config/homebrew/Brewfile`. After installing
or removing packages, regenerate it from the current machine:

```sh
./scripts/refresh-brewfile.sh
git add home/dot_config/homebrew/Brewfile && git commit
```

`chezmoi apply` re-runs the installer only when that file actually changes.

## Daily use

### Tracking a config change

Edit your config in `$HOME` as normal, then:

```sh
chezmoi add ~/.some-new-config   # start tracking a file (copies it into the repo)
chezmoi diff                     # preview what apply would change
chezmoi apply                    # write repo -> $HOME
chezmoi update                   # git pull + apply (for other machines)
```

### Committing changes

You never need to `cd` into the repo. Pick whichever you prefer.

**Run a single git command from anywhere** — note the `--` separator, which is
required, otherwise chezmoi tries to parse your git flags itself:

```sh
chezmoi git -- status
chezmoi git -- add -A
chezmoi git -- commit -m "update zshrc"
chezmoi git -- push
```

**Or open a shell inside the repo** (`exit` to come back):

```sh
chezmoi cd                       # lands in ~/Projects/dotfiles
git add -A && git commit -m "..."
exit
```

**Or let chezmoi commit for you.** In `~/.config/chezmoi/chezmoi.toml`:

```toml
[git]
    autoCommit = true
    # autoPush = true   # optional: also push on every apply
```

Then `chezmoi add` / `apply` / `update` commit automatically. The keys must be
under the `[git]` table — the top-level form is silently ignored.

## Content

Ghostty, WezTerm, zsh (+ Oh My Zsh, Powerlevel10k), fish, Nushell, Starship,
mise, git, Neovim, Zed, OpenCode, VS Code Insiders.
