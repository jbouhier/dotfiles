# Path to your oh-my-zsh installation.
#
export ZSH=/Users/synxs/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git svn colored-man colorize github vagrant virutalenv pip python brew osx zsh-syntax-highlighting symfony2 xcode ruby)

# User configuration

export PATH="$PATH:/usr/local/opt/php56/bin:/Users/synxs/.rvm/gems/ruby-2.2-head/bin:/Users/synxs/.rvm/gems/ruby-2.2-head@global/bin:/Users/synxs/.rvm/rubies/ruby-2.2-head/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Users/synxs/.rvm/bin=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/Cellar/vim/:/usr/local/bin:/Users/synxs/.node/lib/node_modules/bower/bin:/Users/synxs/.node/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Android SDK
export ANDROID_HOME="$HOME/Development/android-sdk-macosx"
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias vi="vim"

alias c='cd ..'
alias l='ls -l'
alias ll='ls -lh'
alias la='ls -la'
alias rf='rm -rf'
alias bd='cd /usr/local/Cellar/'
alias d='du -sh'

alias e='emacs -nw'
alias ej='rm -f *~'

alias gc='gcc-7'
alias svni='svn log --verbose -r'
alias spot='vi Library/Application\ Support/Spotify/prefs'
alias npmc='npm config edit --global'
alias gitc='git config --global --edit'
alias ge='git config --edit'
alias ld='adb devices'
alias api='cd /Users/synxs/etna/gpe/project/boxeapp-api'
alias app='cd /Users/synxs/etna/gpe/project/master-mobileApp'
alias site='cd ~/etna/gpe/project/site_boxeapp'
alias and='cd ~/AndroidStudioProjects/Drawy'
alias nc='npm-check -gu'
alias bc='brew update'
alias bcc='brew cleanup'
alias bu='brew upgrade'
alias ng2='cd ~/projects/1-languages/js/ng2-first'
alias p='python'
alias p3='python3'

export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export GOPATH=/Users/synxs/gopath

alias bower='noglob bower'

#alias ohmyzsh="mate ~/.oh-my-zsh"

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN=a3d39371749858651af469cd9ac0083d752d752f
