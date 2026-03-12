# config.nu
#
# Installed by:
# version = "0.110.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

$env.config.buffer_editor = 'nvim'
$env.config.show_banner = false

# Config
alias npmc = npm config edit --global
alias vsc = cd `~/Library/Application\ Support/Code\ -\ Insiders/User/`
alias gitc = git config --global --edit
alias lg = lazygit
alias tmuxc = vi ~/.tumx.conf
alias stumx = tmux source ~/.tmux.conf
alias wok = cd ~/Projects/sales-furnace
alias sc = jq .scripts package.json
alias pg = psql --host=localhost --dbname=sales_furnace --username=salesOnF1re


# Shell
alias c = cd ..
alias l = ls -l
alias ll = ls -lh
alias la = ls -la
alias rf = rm -rf
alias vi = nvim
alias tt = nvim ~/.config/ghostty/config
alias conf = nvim ~/.config/nushell/config.nu
def rel [] { exec nu }

# Dev
alias vim = nvim
alias e = emacs -nw
alias ej = rm -f *~
alias code = code-insiders
alias t = tmux
alias tkill = tmux kill-session -t
alias make = gmake
alias p = python
alias spot = vi Library/Application\ Support/Spotify/prefs

# AI CLIs
alias oc = opencode
alias cl = claude
alias gm = gemini
alias bb = blackbox

# Mise - Runtime version manager
alias m = mise
alias ml = mise list
alias mi = mise install
alias mr = mise uninstall
alias ms = mise use
alias msg = mise use -g

# Homebrew
alias b = brew
alias bs = brew search
alias bi = brew info
alias ba = brew install
alias bc = brew update
alias bu = brew upgrade
alias bup = bc and bu
alias br = brew remove
alias bl = brew list
alias bcc = brew cleanup

# Git
alias gco = git checkout
alias gsc = git smart-checkout
alias gg = git smart-checkout
alias gma = gco main &> /dev/null || gco master &> /dev/null
alias gre = gco Release/ITP-4.0 &> /dev/null
alias ga = git add
alias gaa = git add --all
alias ge = git config --edit
alias gc = git commit
alias gcm = gc -m
alias gca = gc --amend
alias gcr = gca --reset-author
alias gcam = gc -am
alias gs = git status
alias gsh = git stash -u
alias gsm = git stash -um
alias gsp = git stash pop
alias gsl = git stash list
alias gsd = git stash drop
alias gbl = git branch | cat
alias gpl = git pull
alias gsi = git switch
alias gp = git push
alias gpo = gp -u origin
alias gcl = git clone
alias grecent = git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format='%(refname:short)'
alias gclean = git clean -fdn
alias grm = git rm
alias grmc = git rm --cached
alias grn = grmc -r . and gaa .
alias gmv = git mv
alias glc = git diff-tree --no-commit-id --name-only -r
alias gl = git log --oneline --graph --decorate --all

# Docker
alias d = docker
alias db = docker build
alias dps = docker ps
alias dr = docker run
alias dc = docker compose
alias dcu = dc up
alias dcd = dc down
alias dcr = dc run
alias dcl = dc ls
alias dcc = dc config
alias dci = dc images
alias dck = dc kill

# Misc
alias wh = wthrr paris -f d,w
alias yt = yt-dlp --cookies-from-browser brave -f \bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b\

# Prompt
$env.PROMPT_COMMAND_RIGHT = { 
    $"(date now | format date '%I:%M %p')"
}

# Mise
use ($nu.default-config-dir | path join mise.nu)
