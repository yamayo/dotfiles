# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER=$USER

#PROMPT='[%n]# '
#RPROMPT='[%d]'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby osx bundler brew rails)

source $ZSH/oh-my-zsh.sh
source $HOME/zaw/zaw.zsh
bindkey '^R' zaw-history

setopt nonomatch

# Customize to your needs...
export EDITOR=vim
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
export PATH="$HOME/bin:$PATH"

### Added by Boxen
source /opt/boxen/env.sh

### Added by rbenv
export PATH="/opt/boxen/rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by nodenv
# export PATH="/opt/boxen/nodenv/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by z
. /usr/local/etc/profile.d/z.sh
function precmd () {
  _z --add "$(pwd -P)"
}

### Added by mosh
compdef mosh=ssh

### Added by AWS CLI
source $HOME/.zsh/aws_zsh_completer.sh

### Added by GO
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

### Set aliases
alias v="vim"
alias bi="bundle install"
alias bu="bundle update"
alias be="bundle exec"
alias bundle='nocorrect bundle'
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias less="less -N"
alias reload='source ~/.zshrc'
alias editssh='vim ~/.ssh/config'
alias g='git'
alias e='cd $(ghq list -p | peco)'
alias gsed='gsed'
alias awk='gawk'

# added by travis gem
[ -f /Users/yamato.yo/.travis/travis.sh ] && source /Users/yamato.yo/.travis/travis.sh
