# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"
DEFAULT_USER="yamato.yo"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh
bindkey '^R' zaw-history

# Customize to your needs...
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
export PATH="/Users/yamato.yo/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source /Users/yamato.yo/zaw/zaw.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by z
. /usr/local/etc/profile.d/z.sh
function precmd () {
  _z --add "$(pwd -P)"
}

### Added by mosh
compdef mosh=ssh

### set alias
alias bi="bundle install"
alias bu="bundle update" 
alias be="bundle exec" 
alias bes="bundle exec spring" 
alias bundle='nocorrect bundle'
alias cpwd="pwd | tr -d '\n' | pbcopy"

### AWS
export JAVA_HOME="/Library/Java/Home"
## AUTO_SCALING
export AWS_AUTO_SCALING_HOME="$HOME/aws/AutoScaling-1.0.61.3"
# ※ aws_trashを使う場合、ここをコメントアウトし、iTermを再起動する
export AWS_CREDENTIAL_FILE="$AWS_AUTO_SCALING_HOME/credential-file-path"
##export AWS_AUTO_SCALING_URL="https://autoscaling.us-east-1.amazonaws.com"
export AWS_AUTO_SCALING_URL="https://autoscaling.ap-northeast-1.amazonaws.com"
###
export PATH="$AWS_AUTO_SCALING_HOME/bin:$PATH"
## EC2
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/aws/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/aws/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
## AMI
export EC2_AMITOOL_HOME="/usr/local/Library/LinkedKegs/ec2-ami-tools/jars"

export AWS_CLOUDWATCH_HOME="$HOME/aws/CloudWatch-1.0.13.4"
##export CLOUDWATCH_ENDPOINT="monitoring.us-east-1.amazonaws.com"
export CLOUDWATCH_ENDPOINT="monitoring.ap-northeast-1.amazonaws.com"
export PATH="$AWS_CLOUDWATCH_HOME/bin:$PATH"
##export EC2_REGION=us-east-1
export EC2_REGION=ap-northeast-1

### Added by AWS CLI
export AWS_CONFIG_FILE="/Users/yamato.yo/aws/awscli.conf"
#autoload -U bashcompinit
#bashcompinit
source ~/.zsh/aws_zsh_completer.sh
