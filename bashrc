if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PS1='\u@\h:\w\$ '

export EDITOR="vim"

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export CLICOLOR=1

export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups

set mark-symlinked-directories on

#set command line edit mode to use vi
set -o vi

#aliases
alias be='bundle exec'
alias du='du -hd 0'
alias ll='ls -lah'
