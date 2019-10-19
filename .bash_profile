export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
export PATH="$PATH:~/development/flutter/bin"
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export PATH=$PATH:$HOME/bin
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=$PATH:$HOME/personal-workspace/OriginalCommands
export PYENV_ROOT=/usr/local/var/pyenv

eval "$(rbenv init -)"

source ~/.bashrc
source ~/.git-prompt.sh
source ~/git-completion.bash

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}

PROMPT_COMMAND='add_line'

export PS1='\[\e[1;36m\] \W \[\e[1;32m $(__git_ps1 "%s") \[\e[0m\] \n \[\e[1;4;33m\] >>> \[\e[0m\]'
