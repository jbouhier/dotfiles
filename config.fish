### Paths
fish_add_path $HOME/bin
fish_add_path /usr/local/bin
fish_add_path /opt/homebrew/opt
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.pyenv/shims

### Environment Variables
set -gx LANGUAGE en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set fish_greeting

if status is-interactive
	# Commands to run in interactive sessions can go here
	
	# Aliases
	alias conf="vim ~/.config/fish/config.fish"
	alias con="vim ~/.config/ghostty/config"
	alias rel="source ~/.config/fish/config.fish"
	alias vimc="vim ~/.vimrc"
	alias npmc='npm config edit --global'
	alias vsc="cd ~/Library/Application\ Support/Code\ -\ Insiders/User/"
	alias gitc="git config --global --edit"
	alias lg="lazygit"
	alias tmuxc="vim ~/.tmux.conf"
	alias stumx="tmux source ~/.tmux.conf"
	alias wok="cd ~/Projects/prep-me/"
	alias ws="windsurf"
	alias sc="jq .scripts package.json"
	alias pg="psql --host=localhost --dbname=eai_dev --username=postgres"
	alias oc="opencode"

	# Shell
	alias c='cd ..'
	alias l='ls -l'
	alias ll='ls -lh'
	alias la='ls -la'
	alias rf='rm -rf'
	alias vi="nvim"
	alias vim="nvim"
	alias e='emacs -nw'
	alias ej='rm -f *~'
	alias code='code-insiders'
	alias t="tmux"
	alias tkill="tmux kill-session -t"
	alias make='gmake'
	alias p='python'
	alias spot="vi Library/Application\ Support/Spotify/prefs"

	# Mise - Runtime version manager
	alias a='mise'
	alias al='mise list'
	alias ai='mise install'
	alias ar='mise uninstall'
	alias as='mise use -g'

	# Homebrew
	alias b='brew'
	alias bs='brew search'
	alias bi='brew info'
	alias ba='brew install'
	alias bc='brew update'
	alias bu='brew upgrade'
	alias bup='bc; and bu'
	alias br='brew remove'
	alias bl='brew list'
	alias bcc='brew cleanup'

	# Git 
	alias gco="git checkout"
	alias gsc="git smart-checkout"
	alias gg="git smart-checkout"
	alias gma="git checkout main 2>/dev/null; or git checkout master 2>/dev/null"
	alias gre="git checkout Release/ITP-4.0 2>/dev/null"
	alias ga="git add"
	alias gaa="git add --all"
	alias ge='git config --edit'
	alias gc="git commit"
	alias gcm="gc -m"
	alias gca="gc --amend"
	alias gcr="gca --reset-author"
	alias gcam="gc -am"
	alias gs="git status"
	alias gsh="git stash -u"
	alias gsm="git stash -um"
	alias gsp="git stash pop"
	alias gsl="git stash list"
	alias gsd="git stash drop"
	alias gbl="git branch | cat"
	alias gpl="git pull"
	alias gsi="git switch"
	alias gp="git push"
	alias gpo="gp -u origin"
	alias gcl="git clone"
	alias grecent="git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
	alias gclean="git clean -fdn"
	alias grm="git rm"
	alias grmc="git rm --cached"
	alias grn="grmc -r .; and gaa ."
	alias gmv="git mv"
	alias glc="git diff-tree --no-commit-id --name-only -r"
	alias gl="git log --oneline --graph --decorate --all"

	# Docker & Ollama
	alias d="docker"
	alias db="docker build"
	alias dps="docker ps"
	alias dr="docker run"
	alias dc="docker compose"
	alias dcu="dc up"
	alias dcd="dc down"
	alias dcr="dc run"
	alias dcl="dc ls"
	alias dcc="dc config"
	alias dci="dc images"
	alias dck="dc kill"
	alias ol="ollama"

	# Misc
	alias wh="wthrr paris -f d,w"
	alias yt="yt-dlp --cookies-from-browser brave -f \"bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b\""

	# Broot
	if test -f ~/.config/broot/launcher/fish/br.fish
	    source ~/.config/broot/launcher/fish/br.fish
	end
end

