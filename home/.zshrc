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
plugins=(git ruby osx bundler brew rails)

source $ZSH/oh-my-zsh.sh
# source $HOME/.zaw/zaw/zaw.zsh
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

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export EDITOR=vim

export XDG_CONFIG_HOME=~/.config

export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init - --no-rehash)"

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

export NODENV_ROOT=$HOME/.nodenv
export PATH=$NODENV_ROOT/bin:$PATH
eval "$(nodenv init -)"

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$GOPATH/bin:$GOROOT/bin:$PATH
eval "$(goenv init -)"

eval "$(direnv hook zsh)"

alias v='nvim'
alias vi='nvim'
alias ev='vi ~/.config/nvim/init.vim'
alias bi='bundle install --path vendor/bundle'
alias bu='bundle update'
alias be='bundle exec'
alias c='bundle exec rails c'
alias db='bundle exec rails dbconsole -p'
alias cpwd='pwd | tr -d '\n' | pbcopy'
alias less='less -NS'
alias reload='source ~/.zshrc'
alias g='git'
alias e='cd $(ghq list -p | peco)'
alias top='htop'
# alias -g sed='gsed'
alias -g awk='gawk'
alias dl='docker ps -l -q'
alias ctags="`brew --prefix`/bin/ctags"
