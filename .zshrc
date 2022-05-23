# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Python 3.10
export PATH="/usr/local/opt/python@3.10/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/jbouhier/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User configuration

export VISUAL=vim
export EDITOR="$VISUAL"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Config
alias zshc="vim ~/.zshrc"
alias ohmyzshc="vim ~/.oh-my-zsh"
alias vimc="vim ~/.vimrc"
alias npmc='npm config edit --global'
alias vsc="cd ~/Library/Application\ Support/Code\ -\ Insiders/User/"
alias gitc="git config --global --edit"
alias tmuxc="vim ~/.tumx.conf"
alias szsh="source ~/.zshrc"
alias stumx="tmux source ~/.tmux.conf"

# Terminal
alias vi="vim"
alias e='emacs -nw'
alias ej='rm -f *~'
#alias code='code-insiders'
alias t="tmux"
alias tkill="tmux kill-session -t"
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

# Shell
alias c='cd ..'
alias cc='cd ../..'
alias ccc='cd ../../..'
alias l='ls -l'
alias ll='ls -lh'
alias la='ls -la'
alias rf='rm -rf'
alias bd='cd /usr/local/Cellar/'
alias d='du -sh'

# Dev
alias gcc='gcc-11'
alias g++='g++-11'
alias spot="vi Library/Application\ Support/Spotify/prefs"
alias ge='git config --edit'
alias ld='adb devices'
alias bc='brew update'
alias bcc='brew cleanup'
alias bu='brew upgrade'
alias p='python'
alias p3='python3'

# Git
alias mas="git checkout master"
alias main="git checkout main"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gcam="git commit -am"
alias gs="git status"
alias gsh="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gbl="git branch | cat"
alias gpl="git pull"
alias gco="git checkout"
alias gsi="git switch"
alias gp="git push"
alias gpu="git push -u origin"
alias gcl="git clone"
alias grecent="git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gclean="git clean -fdn"
alias grm="git rm"
alias grmc="git rm --cached"
alias glc="git diff-tree --no-commit-id --name-only -r"

# Yarn
alias y="yarn"
alias ws="y workspace"
alias s="y start"
alias ss="y start:live"
alias sl="y start:lite"
alias st="y storybook"

# Nvm
alias n="nvm"
alias ni="nvm install"
alias nu="nvm uninstall"
alias nl="nvm list"

# Make
alias m='gmake'
alias make='gmake'
alias ma='gmake all'
alias mi='gmake install'
alias ml='gmake lite'
alias mu='gmake up'
alias mm='gmake mock-events'
alias mc='gmake clean'
alias mr='gmake re'

# Docker Compose
alias dc='docker-compose'
alias dcu='dc up -d'
alias dcd='dc down'
alias dcl='dc logs'
alias dcp='dc ps'
alias dcpl='dc pull'
alias dcpu='dc push'
alias dce='dc exec'
alias dcr='dc run'
alias dcb='dc build'
alias dcrm='dc rm'
alias dcr='dc restart'

# jq
alias sc='jq .scripts package.json'

# Projects
alias wok="cd ~/Projects/itp-miwa"
alias serv="cd ~/Projects/videocall-analytics-server"
alias desk="cd ~/Projects/electron"
alias hp="cd ~/Projects/hospital-app"
alias lite="ws miwa-lite"
alias comp="ws miwa-ui-components"
alias fix="y fix:codestyle"
alias fip="lite fix:codestyle && miwa fix:codestyle"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

