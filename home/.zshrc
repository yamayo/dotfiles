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
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git ruby osx bundler brew rails zsh-syntax-highlighting)
plugins=(git ruby osx bundler brew rails z)

source $ZSH/oh-my-zsh.sh
source $HOME/.zaw/zaw/zaw.zsh
# bindkey '^R' zaw-history
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
function tn() { tmux new -s $1 -n $2; }
# function git(){hub "$@"}

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export EDITOR=vim
export PATH=$HOME/bin:/usr/local/bin:$PATH

export XDG_CONFIG_HOME=~/.config

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init --no-rehash - zsh)"

eval "$(pyenv init -)"

export PATH=$HOME/.nodebrew/current/bin:$PATH

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

alias v='nvim'
alias vi='nvim'
alias ev='vi ~/.vimrc'
alias bi='bundle install --path vendor/bundle'
alias bu='bundle update'
alias be='bundle exec'
alias c='bundle exec rails c'
alias db='bundle exec rails dbconsole'
alias cpwd='pwd | tr -d '\n' | pbcopy'
alias less='less -NS'
alias reload='source ~/.zshrc'
alias essh='vim ~/.ssh/config'
alias ezsh='vim ~/.zshrc'
alias g='git'
alias e='cd $(ghq list -p | peco)'
alias mysql='mysql -u root'
alias top='htop'
# alias -g sed='gsed'
alias -g awk='gawk'
alias dl='docker ps -l -q'
alias ctags="`brew --prefix`/bin/ctags"
