# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

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
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias a="git add"
alias A="git add -A"
alias s="git status"
alias c="git commit"
alias p="git pull --rebase"
alias P="git push"
alias d="git diff"
alias bx="bundle exec"
alias bxr="bundle exec rake"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# end rbenv

# bundle install encoding
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# end bundle install encoding

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Go
export GOROOT=$(go env GOROOT)
export GOPATH=/Users/marcel/.gopath
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
# end Go

# Packer
export PATH=$PATH:/usr/local/packer
# end Packer

# GNU tar
PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH

# AWS CLI auto-completion
source /usr/local/share/zsh/site-functions/_aws

# Do not share history between iTerm tabs
# From: http://apple.stackexchange.com/a/75572
unsetopt inc_append_history
unsetopt share_history

# Set up Docker

alias reload-php="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php56.plist && launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"

source ~/.secrets.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
