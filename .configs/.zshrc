#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
 autoload -Uz promptinit
 promptinit
# prompt elite green yellow
prompt steeef

export AWS_RDS_HOME='~/bin/RDSCli-1.19.004/'
export AWS_EB_HOME='~/bin/AWS-ElasticBeanstalk-CLI-2.6.4/eb/macosx/python2.7'
export PATH=$PATH:~/bin:$AWS_RDS_HOME:$AWS_EB_HOME
export PATH="/usr/local/php5/bin:$PATH"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app'

function quick-whois () {
    command whois "domain ${1}"
}
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:~/Downloads
export VAULT_DEV_ROOT_TOKEN_ID=s.8MgtQ5B1WMlDOBTSOJCxQLYs
export VAULT_ADDR='http://127.0.0.1:8200'
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
